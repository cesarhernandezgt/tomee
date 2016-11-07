/**
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.openejb.arquillian.tests.security;

import org.apache.openejb.arquillian.tests.TestRun;
import org.apache.openejb.arquillian.tests.TestSetup;
import org.apache.openejb.client.RemoteInitialContextFactory;
import org.apache.openejb.server.httpd.ServerServlet;
import org.jboss.arquillian.container.test.api.Deployment;
import org.jboss.arquillian.container.test.api.RunAsClient;
import org.jboss.arquillian.junit.Arquillian;
import org.jboss.arquillian.test.api.ArquillianResource;
import org.jboss.shrinkwrap.api.spec.WebArchive;
import org.jboss.shrinkwrap.descriptor.api.webapp30.WebAppDescriptor;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;

import javax.naming.Context;
import javax.naming.InitialContext;
import java.net.URL;
import java.util.Properties;


@RunWith(Arquillian.class)
@RunAsClient
public class TomEEEjbServletAuthorizationHeaderTest extends TestSetup  {

    public static final String TEST_NAME = TomEEEjbServletAuthorizationHeaderTest.class.getSimpleName();

    @ArquillianResource
    private URL url;

    @Test
    public void testAuthenticate() throws Exception {
        final String ejbUrl = this.url.toExternalForm() + "ejb";

        final Properties p = new Properties();
        p.setProperty(Context.INITIAL_CONTEXT_FACTORY, RemoteInitialContextFactory.class.getName());
        p.setProperty(Context.PROVIDER_URL, ejbUrl);
        p.setProperty(Context.SECURITY_PRINCIPAL, "tomee");
        p.setProperty(Context.SECURITY_CREDENTIALS, "password");
        final InitialContext context = new InitialContext(p);

        final BusinessRemote bean = (BusinessRemote) context.lookup("global/TomEEEjbServletAuthorizationHeaderTest/BusinessBean!org.apache.openejb.arquillian.tests.security.BusinessRemote");
        Assert.assertEquals("test", bean.echo("test"));
    }

    @Deployment(testable = false)
    public static WebArchive getArchive() {
        return new TomEEEjbServletAuthorizationHeaderTest().createDeployment(TestRun.class, BusinessBean.class);
    }

    @Override
    protected void decorateDescriptor(WebAppDescriptor descriptor) {
        descriptor
            .createServlet()
                .servletName("ServerServlet")
                .servletClass(ServerServlet.class.getName()).up()
            .createServletMapping()
                .servletName("ServerServlet")
                .urlPattern("/ejb").up()
            .createSecurityConstraint()
                .getOrCreateWebResourceCollection()
                    .webResourceName("all")
                    .urlPattern("/*").up()
                .getOrCreateAuthConstraint()
                    .roleName("tomee-admin")
                    .up().up()
            .createLoginConfig()
                .authMethod("BASIC");
    }

}


