Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB3MP33YAKGQEUK37NKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 82201136186
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jan 2020 21:07:09 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id b131sf1349513wmd.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jan 2020 12:07:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578600429; cv=pass;
        d=google.com; s=arc-20160816;
        b=fbqBEjVrIdnkWIi90wwaoO7DDV9Cou/RU7S/eA4jw+li7GgmXXfOjcMpmZymc9lL1s
         ut09R1EDr+m0KUtlbct8HfDvIonKSxu50YdICppV/Ov523AmI4qNh0mtVWadaCVrHR3b
         cuY9KZo7Nn6ONxfg4oaH9Iki7m16wzPp4OiRjCW935/Zo2KoLXmfwjhJqnXIU3rJ3QwG
         JnTHnjioJkp/l8i5+q9JZBMAhUewl8H4SIEPRE+rOPyBK6xUWGoHX9IZDIFZbv5FlqQK
         tft7FDzDmqINeCfygRFMomiJGQEUh1RxTebt4b77x7zz5g8/z6eK/qARuc10xCPfKC+X
         vCAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=8/DeH+qun6SdeP7tJJb/QKOl+LGDy+95G/tbR+VEKac=;
        b=AVNUdH+3rP4PkwO4/yloph+Gaep4i3D5x1b3NNUDP8upDpIOA7T7C/IexEScJOIY7H
         aJvIJhM8v2Jkgl2fbATbkZxKilc7HpWPue/iB/yMGkWane/D3TkS5fSmuiEPDNvkkhEj
         oHMW2qarul/YE3HIWeDWewkT9VkW/QU+vNql67IM1b5v3cNDmu09pm1DUg0f96fWfgPz
         g9XfbRz5uAT/3eFqrjabsdlPzN33jdVgyN+SahoAWJUmpkP4NGl2SBw0znO/BQMr0d1v
         7BiStFguHHYUky3Qa3Gfh8hd6J0BQcwkW36mzu65TXt+mUCr9zO+SlLRye9xnqwrsrrv
         OWxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=nC4QiT4B;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8/DeH+qun6SdeP7tJJb/QKOl+LGDy+95G/tbR+VEKac=;
        b=nC6gA9F7TrW/nYpiEDCUUn6weCvBZIEo9TDOPpRxT+dzZFi6jJd9EGtfSL1qBvlLMu
         jrsEkgeuAshOa1zVbsWHdmyfTyOrB5yklXP5xQ1DHOEnx7YYmoRXHnqJi94R/hei20sv
         wo9HPGVx+TIV1/EyT44PTJ43YpDxnCMT4IbYXIJQOH5FO6WG3GtedQjSI1JZBY/0NIOX
         DkIFNjX3CXC1D8ZmmZ33SbBqHjHvUx0a4NjG4ONK+CY9uym4g+1iXk+gOvjkulEV7BjC
         NS6G5CsadUPr4SPRwpK9Q1wmvlHpaBGakfsrZPGydKHJkPsP+t/x6Yb8PeFNpXW5mjW6
         6bDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8/DeH+qun6SdeP7tJJb/QKOl+LGDy+95G/tbR+VEKac=;
        b=pZC/bDwYVhQxroXTuUcmdfdBSu0OUJb5GWDdEaQv3t5sNKugBl+/XxkmkAzYFxtB3O
         ZSkZtyA4D5jQjCfc8Kn5wzdLlM2adeT+M6Y+sQ5B7gFDQz2EnNS65UnRyQh6Wn1wwTuo
         JMVjbG3z4mn5g+nyC38tIwnJpkx9Dt1bRwa8CAgYsoCwQG+wAa9EPtH/iuLGc9AXH7DU
         Wz1J/YMEefqGA+MXxKRca+IMbQ2sYYfzmv+ufwl2Sb7Gk3Ffm/XYtYkXjAuxUAnSlEGx
         W3r7EdJ/fJjSb2vHVxuAZInf7njcf5941P9LqBa3npFycIwONIZcoY34ZCIYZ0gDVfPn
         TggQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWO0pig5C7Viq+XVcu438tufLf2P264Ybgmii/9wsloTwSl49PL
	qCmLhNI50va+wYW25JdWaeI=
X-Google-Smtp-Source: APXvYqwMMtvWKuOEhzr0MOErV8JEkgLlAalj7IKq/bqLQjLfbp5XGmfwPB7/jsUHvSsykxjFoCzPDA==
X-Received: by 2002:a05:600c:24ca:: with SMTP id 10mr6461683wmu.4.1578600429108;
        Thu, 09 Jan 2020 12:07:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ebc5:: with SMTP id v5ls925117wrn.8.gmail; Thu, 09 Jan
 2020 12:07:08 -0800 (PST)
X-Received: by 2002:adf:fcc4:: with SMTP id f4mr12708948wrs.247.1578600428485;
        Thu, 09 Jan 2020 12:07:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578600428; cv=none;
        d=google.com; s=arc-20160816;
        b=eOH8BrspY/QtQsv27LDScCgClYZqRGGpShoxlldjCH1EwwPOyieUH+aLhMAMqOXNlo
         g4Rf4M64KS6bXKAcdRNYwPXU+L744y9mus0SnzrOyjo8AcqreGLGJfuTPZki+d1DjgRO
         YPObc02V+33enYqGzua2Ft+SSjQAQIVfx1f0lr5tnFMv0oH4FK6Tg4plXfi69oHQe687
         Hjxz2Je0RTgsWWzHkxLQwge2nhSf6bMpCTBW3t0Fm0adAQkq87gIdWohtd/x1JKOZQ6y
         2g63fu7ROWdY+3925vwiqtwTOpYhKejuwiSsFQDjtoPS3Q5l4x+C4tmhcRVY+OrllDxa
         yh4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=BxG70VZC0UAlmP8bf5A9a9CxAIRNheNpBxTMMRpYf20=;
        b=f7kG30XkE4GsvsGdUqDQgtttHUZ6vjzzPWCg0RtFurohTAIfKYGlv0DEKmv395gRiT
         n3YCF1noT0Luc15O0DPZo1Q2yD5idkmNUwd2Cn/JJ4ZFLA6gXi2zvyhsYoeRGQqaYGCp
         yqwDX5EFVgk9wieVmI1duPrWttgTUZPksWRMely4dAAKXUqk7sneAHhXhvQWYMpK1sQN
         ptlm6Xh2lfRxVsGeL6YCqGEnwEZv2kc1bYKH3X4N/iUoe6GlpQ+/Mj+DUlBU8qjlGRa2
         MhckvpkGr0sErAW/i+m9w1JPzSoi3kDLEOEv8e9XmB0tDnJrMMaD2j3ckv3E+VcRix37
         OSmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=nC4QiT4B;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y185si119569wmd.2.2020.01.09.12.07.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2020 12:07:08 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id z7so8689871wrl.13
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jan 2020 12:07:08 -0800 (PST)
X-Received: by 2002:adf:a308:: with SMTP id c8mr12422221wrb.240.1578600427450;
        Thu, 09 Jan 2020 12:07:07 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id c9sm3841236wmc.47.2020.01.09.12.07.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Jan 2020 12:07:06 -0800 (PST)
From: ci_notify@linaro.org
Date: Thu, 9 Jan 2020 20:07:05 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <258757195.12173.1578600426898.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allmodconfig - Build # 56 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_12172_164190549.1578600426176"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=nC4QiT4B;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::442
 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

------=_Part_12172_164190549.1578600426176
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/gnu-release-aarch64-next-allmodconfig
 - tcwg_kernel/gnu-release-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-master-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
 - tcwg_kernel/llvm-release-aarch64-next-allyesconfig
 - tcwg_kernel/llvm-release-arm-next-allmodconfig

Culprit:
<cut>
commit 51466b3fd2725bfb0de629f71c0854ff276d50ae
Author: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>

    drm/amd/display: Add execution and transition states for HDCP2.2
</cut>

First few errors in logs of first_bad:
00:02:56 drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c:162:4: error: implicit declaration of function 'udelay' [-Werror,-Wimplicit-function-declaration]
00:02:56 drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.c:472:3: error: implicit declaration of function 'udelay' [-Werror,-Wimplicit-function-declaration]
00:02:56 make[4]: *** [drivers/gpu/drm/amd/amdgpu/../display/modules/hdcp/hdcp2_execution.o] Error 1
00:02:58 make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2
00:03:33 make[2]: *** [drivers/gpu/drm] Error 2
00:03:33 make[1]: *** [drivers/gpu] Error 2
00:04:15 make: *** [drivers] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="2646738520338211e74394857e36df7c455a8a91"

Results regressed to (for first_bad == 51466b3fd2725bfb0de629f71c0854ff276d50ae)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
19881

from (for last_good == eff682f83c9c2030761e7536c5d97e1b20f71c15)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
27167
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/56/artifact/artifacts/build-51466b3fd2725bfb0de629f71c0854ff276d50ae/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/56/artifact/artifacts/build-eff682f83c9c2030761e7536c5d97e1b20f71c15/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/56/

Reproduce builds:
<cut>
mkdir investigate-linux-51466b3fd2725bfb0de629f71c0854ff276d50ae
cd investigate-linux-51466b3fd2725bfb0de629f71c0854ff276d50ae

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/56/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/56/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/56/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce first_bad build
git checkout --detach 51466b3fd2725bfb0de629f71c0854ff276d50ae
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach eff682f83c9c2030761e7536c5d97e1b20f71c15
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/56/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/56/consoleText

Full commit:
<cut>
commit 51466b3fd2725bfb0de629f71c0854ff276d50ae
Author: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Date:   Wed Sep 18 11:18:15 2019 -0400

    drm/amd/display: Add execution and transition states for HDCP2.2
    
    The module works like a state machine
    
                                        +-------------+
                                ------> | Execution.c | ------
                                |       +-------------+       |
                                |                             V
        +----+              +--------+                 +--------------+
        | DM |    ----->    | Hdcp.c |  <------------  | Transition.c |
        +----+    <-----    +--------+                 +--------------+
    
    This patch adds the execution and transition files for 2.2
    
    Signed-off-by: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
    Reviewed-by: Harry Wentland <harry.wentland@amd.com>
    Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
---
 drivers/gpu/drm/amd/display/modules/hdcp/Makefile  |   3 +-
 drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c    |  86 +-
 drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h    | 127 +++
 .../drm/amd/display/modules/hdcp/hdcp2_execution.c | 881 +++++++++++++++++++++
 .../amd/display/modules/hdcp/hdcp2_transition.c    | 674 ++++++++++++++++
 drivers/gpu/drm/amd/display/modules/inc/mod_hdcp.h |   2 +
 6 files changed, 1764 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/Makefile b/drivers/gpu/drm/amd/display/modules/hdcp/Makefile
index 1c3c6d47973a..904424da01b5 100644
--- a/drivers/gpu/drm/amd/display/modules/hdcp/Makefile
+++ b/drivers/gpu/drm/amd/display/modules/hdcp/Makefile
@@ -24,7 +24,8 @@
 #
 
 HDCP = hdcp_ddc.o hdcp_log.o hdcp_psp.o hdcp.o \
-		hdcp1_execution.o hdcp1_transition.o
+		hdcp1_execution.o hdcp1_transition.o \
+		hdcp2_execution.o hdcp2_transition.o
 
 AMD_DAL_HDCP = $(addprefix $(AMDDALPATH)/modules/hdcp/,$(HDCP))
 #$(info ************  DAL-HDCP_MAKEFILE ************)
diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c
index d7ac445dec6f..a74812977963 100644
--- a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c
+++ b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.c
@@ -37,24 +37,52 @@ static void push_error_status(struct mod_hdcp *hdcp,
 		HDCP_ERROR_TRACE(hdcp, status);
 	}
 
-	hdcp->connection.hdcp1_retry_count++;
+	if (is_hdcp1(hdcp)) {
+		hdcp->connection.hdcp1_retry_count++;
+	} else if (is_hdcp2(hdcp)) {
+		hdcp->connection.hdcp2_retry_count++;
+	}
 }
 
 static uint8_t is_cp_desired_hdcp1(struct mod_hdcp *hdcp)
 {
-	int i, display_enabled = 0;
+	int i, is_auth_needed = 0;
 
-	/* if all displays on the link are disabled, hdcp is not desired */
+	/* if all displays on the link don't need authentication,
+	 * hdcp is not desired
+	 */
 	for (i = 0; i < MAX_NUM_OF_DISPLAYS; i++) {
 		if (hdcp->connection.displays[i].state != MOD_HDCP_DISPLAY_INACTIVE &&
 				!hdcp->connection.displays[i].adjust.disable) {
-			display_enabled = 1;
+			is_auth_needed = 1;
 			break;
 		}
 	}
 
 	return (hdcp->connection.hdcp1_retry_count < MAX_NUM_OF_ATTEMPTS) &&
-			display_enabled && !hdcp->connection.link.adjust.hdcp1.disable;
+			is_auth_needed &&
+			!hdcp->connection.link.adjust.hdcp1.disable;
+}
+
+static uint8_t is_cp_desired_hdcp2(struct mod_hdcp *hdcp)
+{
+	int i, is_auth_needed = 0;
+
+	/* if all displays on the link don't need authentication,
+	 * hdcp is not desired
+	 */
+	for (i = 0; i < MAX_NUM_OF_DISPLAYS; i++) {
+		if (hdcp->connection.displays[i].state != MOD_HDCP_DISPLAY_INACTIVE &&
+				!hdcp->connection.displays[i].adjust.disable) {
+			is_auth_needed = 1;
+			break;
+		}
+	}
+
+	return (hdcp->connection.hdcp2_retry_count < MAX_NUM_OF_ATTEMPTS) &&
+			is_auth_needed &&
+			!hdcp->connection.link.adjust.hdcp2.disable &&
+			!hdcp->connection.is_hdcp2_revoked;
 }
 
 static enum mod_hdcp_status execution(struct mod_hdcp *hdcp,
@@ -82,6 +110,11 @@ static enum mod_hdcp_status execution(struct mod_hdcp *hdcp,
 	} else if (is_in_hdcp1_dp_states(hdcp)) {
 		status = mod_hdcp_hdcp1_dp_execution(hdcp,
 				event_ctx, &input->hdcp1);
+	} else if (is_in_hdcp2_states(hdcp)) {
+		status = mod_hdcp_hdcp2_execution(hdcp, event_ctx, &input->hdcp2);
+	} else if (is_in_hdcp2_dp_states(hdcp)) {
+		status = mod_hdcp_hdcp2_dp_execution(hdcp,
+				event_ctx, &input->hdcp2);
 	}
 out:
 	return status;
@@ -99,7 +132,10 @@ static enum mod_hdcp_status transition(struct mod_hdcp *hdcp,
 
 	if (is_in_initialized_state(hdcp)) {
 		if (is_dp_hdcp(hdcp))
-			if (is_cp_desired_hdcp1(hdcp)) {
+			if (is_cp_desired_hdcp2(hdcp)) {
+				callback_in_ms(0, output);
+				set_state_id(hdcp, output, D2_A0_DETERMINE_RX_HDCP_CAPABLE);
+			} else if (is_cp_desired_hdcp1(hdcp)) {
 				callback_in_ms(0, output);
 				set_state_id(hdcp, output, D1_A0_DETERMINE_RX_HDCP_CAPABLE);
 			} else {
@@ -107,7 +143,10 @@ static enum mod_hdcp_status transition(struct mod_hdcp *hdcp,
 				set_state_id(hdcp, output, HDCP_CP_NOT_DESIRED);
 			}
 		else if (is_hdmi_dvi_sl_hdcp(hdcp))
-			if (is_cp_desired_hdcp1(hdcp)) {
+			if (is_cp_desired_hdcp2(hdcp)) {
+				callback_in_ms(0, output);
+				set_state_id(hdcp, output, H2_A0_KNOWN_HDCP2_CAPABLE_RX);
+			} else if (is_cp_desired_hdcp1(hdcp)) {
 				callback_in_ms(0, output);
 				set_state_id(hdcp, output, H1_A0_WAIT_FOR_ACTIVE_RX);
 			} else {
@@ -126,6 +165,12 @@ static enum mod_hdcp_status transition(struct mod_hdcp *hdcp,
 	} else if (is_in_hdcp1_dp_states(hdcp)) {
 		status = mod_hdcp_hdcp1_dp_transition(hdcp,
 				event_ctx, &input->hdcp1, output);
+	} else if (is_in_hdcp2_states(hdcp)) {
+		status = mod_hdcp_hdcp2_transition(hdcp,
+				event_ctx, &input->hdcp2, output);
+	} else if (is_in_hdcp2_dp_states(hdcp)) {
+		status = mod_hdcp_hdcp2_dp_transition(hdcp,
+				event_ctx, &input->hdcp2, output);
 	} else {
 		status = MOD_HDCP_STATUS_INVALID_STATE;
 	}
@@ -139,9 +184,13 @@ static enum mod_hdcp_status reset_authentication(struct mod_hdcp *hdcp,
 	enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
 
 	if (is_hdcp1(hdcp)) {
-		if (hdcp->auth.trans_input.hdcp1.create_session != UNKNOWN)
+		if (hdcp->auth.trans_input.hdcp1.create_session != UNKNOWN) {
+			/* TODO - update psp to unify create session failure
+			 * recovery between hdcp1 and 2.
+			 */
 			mod_hdcp_hdcp1_destroy_session(hdcp);
 
+		}
 		if (hdcp->auth.trans_input.hdcp1.add_topology == PASS) {
 			status = mod_hdcp_remove_display_topology(hdcp);
 			if (status != MOD_HDCP_STATUS_SUCCESS) {
@@ -154,6 +203,27 @@ static enum mod_hdcp_status reset_authentication(struct mod_hdcp *hdcp,
 		memset(&hdcp->auth, 0, sizeof(struct mod_hdcp_authentication));
 		memset(&hdcp->state, 0, sizeof(struct mod_hdcp_state));
 		set_state_id(hdcp, output, HDCP_INITIALIZED);
+	} else if (is_hdcp2(hdcp)) {
+		if (hdcp->auth.trans_input.hdcp2.create_session == PASS) {
+			status = mod_hdcp_hdcp2_destroy_session(hdcp);
+			if (status != MOD_HDCP_STATUS_SUCCESS) {
+				output->callback_needed = 0;
+				output->watchdog_timer_needed = 0;
+				goto out;
+			}
+		}
+		if (hdcp->auth.trans_input.hdcp2.add_topology == PASS) {
+			status = mod_hdcp_remove_display_topology(hdcp);
+			if (status != MOD_HDCP_STATUS_SUCCESS) {
+				output->callback_needed = 0;
+				output->watchdog_timer_needed = 0;
+				goto out;
+			}
+		}
+		HDCP_TOP_RESET_AUTH_TRACE(hdcp);
+		memset(&hdcp->auth, 0, sizeof(struct mod_hdcp_authentication));
+		memset(&hdcp->state, 0, sizeof(struct mod_hdcp_state));
+		set_state_id(hdcp, output, HDCP_INITIALIZED);
 	} else if (is_in_cp_not_desired_state(hdcp)) {
 		status = mod_hdcp_remove_display_topology(hdcp);
 		if (status != MOD_HDCP_STATUS_SUCCESS) {
diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h
index d83f0ab1cadb..9887c5ea6d5f 100644
--- a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h
+++ b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp.h
@@ -44,11 +44,13 @@
 #define BINFO_MAX_DEVS_EXCEEDED_MASK_DP			0x0080
 #define BINFO_MAX_CASCADE_EXCEEDED_MASK_DP		0x0800
 
+#define VERSION_HDCP2_MASK				0x04
 #define RXSTATUS_MSG_SIZE_MASK				0x03FF
 #define RXSTATUS_READY_MASK				0x0400
 #define RXSTATUS_REAUTH_REQUEST_MASK			0x0800
 #define RXIDLIST_DEVICE_COUNT_LOWER_MASK		0xf0
 #define RXIDLIST_DEVICE_COUNT_UPPER_MASK		0x01
+#define RXCAPS_BYTE2_HDCP2_VERSION_DP			0x02
 #define RXCAPS_BYTE0_HDCP_CAPABLE_MASK_DP		0x02
 #define RXSTATUS_READY_MASK_DP				0x0001
 #define RXSTATUS_H_P_AVAILABLE_MASK_DP			0x0002
@@ -92,8 +94,52 @@ struct mod_hdcp_transition_input_hdcp1 {
 	uint8_t stream_encryption_dp;
 };
 
+struct mod_hdcp_transition_input_hdcp2 {
+	uint8_t hdcp2version_read;
+	uint8_t hdcp2_capable_check;
+	uint8_t add_topology;
+	uint8_t create_session;
+	uint8_t ake_init_prepare;
+	uint8_t ake_init_write;
+	uint8_t rxstatus_read;
+	uint8_t ake_cert_available;
+	uint8_t ake_cert_read;
+	uint8_t ake_cert_validation;
+	uint8_t stored_km_write;
+	uint8_t no_stored_km_write;
+	uint8_t h_prime_available;
+	uint8_t h_prime_read;
+	uint8_t pairing_available;
+	uint8_t pairing_info_read;
+	uint8_t h_prime_validation;
+	uint8_t lc_init_prepare;
+	uint8_t lc_init_write;
+	uint8_t l_prime_available_poll;
+	uint8_t l_prime_read;
+	uint8_t l_prime_validation;
+	uint8_t eks_prepare;
+	uint8_t eks_write;
+	uint8_t enable_encryption;
+	uint8_t reauth_request_check;
+	uint8_t rx_id_list_read;
+	uint8_t device_count_check;
+	uint8_t rx_id_list_validation;
+	uint8_t repeater_auth_ack_write;
+	uint8_t prepare_stream_manage;
+	uint8_t stream_manage_write;
+	uint8_t stream_ready_available;
+	uint8_t stream_ready_read;
+	uint8_t stream_ready_validation;
+
+	uint8_t rx_caps_read_dp;
+	uint8_t content_stream_type_write;
+	uint8_t link_integrity_check_dp;
+	uint8_t stream_encryption_dp;
+};
+
 union mod_hdcp_transition_input {
 	struct mod_hdcp_transition_input_hdcp1 hdcp1;
+	struct mod_hdcp_transition_input_hdcp2 hdcp2;
 };
 
 struct mod_hdcp_message_hdcp1 {
@@ -150,8 +196,10 @@ struct mod_hdcp_connection {
 	struct mod_hdcp_display displays[MAX_NUM_OF_DISPLAYS];
 	uint8_t is_repeater;
 	uint8_t is_km_stored;
+	uint8_t is_hdcp2_revoked;
 	struct mod_hdcp_trace trace;
 	uint8_t hdcp1_retry_count;
+	uint8_t hdcp2_retry_count;
 };
 
 /* contains values per authentication cycle */
@@ -219,6 +267,50 @@ enum mod_hdcp_hdcp1_dp_state_id {
 	HDCP1_DP_STATE_END = D1_A7_READ_KSV_LIST,
 };
 
+enum mod_hdcp_hdcp2_state_id {
+	HDCP2_STATE_START = HDCP1_DP_STATE_END,
+	H2_A0_KNOWN_HDCP2_CAPABLE_RX,
+	H2_A1_SEND_AKE_INIT,
+	H2_A1_VALIDATE_AKE_CERT,
+	H2_A1_SEND_NO_STORED_KM,
+	H2_A1_READ_H_PRIME,
+	H2_A1_READ_PAIRING_INFO_AND_VALIDATE_H_PRIME,
+	H2_A1_SEND_STORED_KM,
+	H2_A1_VALIDATE_H_PRIME,
+	H2_A2_LOCALITY_CHECK,
+	H2_A3_EXCHANGE_KS_AND_TEST_FOR_REPEATER,
+	H2_ENABLE_ENCRYPTION,
+	H2_A5_AUTHENTICATED,
+	H2_A6_WAIT_FOR_RX_ID_LIST,
+	H2_A78_VERIFY_RX_ID_LIST_AND_SEND_ACK,
+	H2_A9_SEND_STREAM_MANAGEMENT,
+	H2_A9_VALIDATE_STREAM_READY,
+	HDCP2_STATE_END = H2_A9_VALIDATE_STREAM_READY,
+};
+
+enum mod_hdcp_hdcp2_dp_state_id {
+	HDCP2_DP_STATE_START = HDCP2_STATE_END,
+	D2_A0_DETERMINE_RX_HDCP_CAPABLE,
+	D2_A1_SEND_AKE_INIT,
+	D2_A1_VALIDATE_AKE_CERT,
+	D2_A1_SEND_NO_STORED_KM,
+	D2_A1_READ_H_PRIME,
+	D2_A1_READ_PAIRING_INFO_AND_VALIDATE_H_PRIME,
+	D2_A1_SEND_STORED_KM,
+	D2_A1_VALIDATE_H_PRIME,
+	D2_A2_LOCALITY_CHECK,
+	D2_A34_EXCHANGE_KS_AND_TEST_FOR_REPEATER,
+	D2_SEND_CONTENT_STREAM_TYPE,
+	D2_ENABLE_ENCRYPTION,
+	D2_A5_AUTHENTICATED,
+	D2_A6_WAIT_FOR_RX_ID_LIST,
+	D2_A78_VERIFY_RX_ID_LIST_AND_SEND_ACK,
+	D2_A9_SEND_STREAM_MANAGEMENT,
+	D2_A9_VALIDATE_STREAM_READY,
+	HDCP2_DP_STATE_END = D2_A9_VALIDATE_STREAM_READY,
+	HDCP_STATE_END = HDCP2_DP_STATE_END,
+};
+
 /* hdcp1 executions and transitions */
 typedef enum mod_hdcp_status (*mod_hdcp_action)(struct mod_hdcp *hdcp);
 uint8_t mod_hdcp_execute_and_set(
@@ -239,6 +331,22 @@ enum mod_hdcp_status mod_hdcp_hdcp1_dp_transition(struct mod_hdcp *hdcp,
 	struct mod_hdcp_transition_input_hdcp1 *input,
 	struct mod_hdcp_output *output);
 
+/* hdcp2 executions and transitions */
+enum mod_hdcp_status mod_hdcp_hdcp2_execution(struct mod_hdcp *hdcp,
+	struct mod_hdcp_event_context *event_ctx,
+	struct mod_hdcp_transition_input_hdcp2 *input);
+enum mod_hdcp_status mod_hdcp_hdcp2_dp_execution(struct mod_hdcp *hdcp,
+	struct mod_hdcp_event_context *event_ctx,
+	struct mod_hdcp_transition_input_hdcp2 *input);
+enum mod_hdcp_status mod_hdcp_hdcp2_transition(struct mod_hdcp *hdcp,
+	struct mod_hdcp_event_context *event_ctx,
+	struct mod_hdcp_transition_input_hdcp2 *input,
+	struct mod_hdcp_output *output);
+enum mod_hdcp_status mod_hdcp_hdcp2_dp_transition(struct mod_hdcp *hdcp,
+	struct mod_hdcp_event_context *event_ctx,
+	struct mod_hdcp_transition_input_hdcp2 *input,
+	struct mod_hdcp_output *output);
+
 /* log functions */
 void mod_hdcp_dump_binary_message(uint8_t *msg, uint32_t msg_size,
 		uint8_t *buf, uint32_t buf_size);
@@ -289,6 +397,7 @@ enum mod_hdcp_status mod_hdcp_read_binfo(struct mod_hdcp *hdcp);
 enum mod_hdcp_status mod_hdcp_write_aksv(struct mod_hdcp *hdcp);
 enum mod_hdcp_status mod_hdcp_write_ainfo(struct mod_hdcp *hdcp);
 enum mod_hdcp_status mod_hdcp_write_an(struct mod_hdcp *hdcp);
+enum mod_hdcp_status mod_hdcp_read_hdcp2version(struct mod_hdcp *hdcp);
 enum mod_hdcp_status mod_hdcp_read_rxcaps(struct mod_hdcp *hdcp);
 enum mod_hdcp_status mod_hdcp_read_rxstatus(struct mod_hdcp *hdcp);
 enum mod_hdcp_status mod_hdcp_read_ake_cert(struct mod_hdcp *hdcp);
@@ -352,11 +461,28 @@ static inline uint8_t is_in_hdcp1_dp_states(struct mod_hdcp *hdcp)
 			current_state(hdcp) <= HDCP1_DP_STATE_END);
 }
 
+static inline uint8_t is_in_hdcp2_states(struct mod_hdcp *hdcp)
+{
+	return (current_state(hdcp) > HDCP2_STATE_START &&
+			current_state(hdcp) <= HDCP2_STATE_END);
+}
+
+static inline uint8_t is_in_hdcp2_dp_states(struct mod_hdcp *hdcp)
+{
+	return (current_state(hdcp) > HDCP2_DP_STATE_START &&
+			current_state(hdcp) <= HDCP2_DP_STATE_END);
+}
+
 static inline uint8_t is_hdcp1(struct mod_hdcp *hdcp)
 {
 	return (is_in_hdcp1_states(hdcp) || is_in_hdcp1_dp_states(hdcp));
 }
 
+static inline uint8_t is_hdcp2(struct mod_hdcp *hdcp)
+{
+	return (is_in_hdcp2_states(hdcp) || is_in_hdcp2_dp_states(hdcp));
+}
+
 static inline uint8_t is_in_cp_not_desired_state(struct mod_hdcp *hdcp)
 {
 	return current_state(hdcp) == HDCP_CP_NOT_DESIRED;
@@ -481,6 +607,7 @@ static inline struct mod_hdcp_display *get_empty_display_container(
 static inline void reset_retry_counts(struct mod_hdcp *hdcp)
 {
 	hdcp->connection.hdcp1_retry_count = 0;
+	hdcp->connection.hdcp2_retry_count = 0;
 }
 
 #endif /* HDCP_H_ */
diff --git a/drivers/gpu/drm/amd/display/modules/hdcp/hdcp2_execution.c b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp2_execution.c
new file mode 100644
index 000000000000..c93c8098d972
--- /dev/null
+++ b/drivers/gpu/drm/amd/display/modules/hdcp/hdcp2_execution.c
@@ -0,0 +1,881 @@
+/*
+ * Copyright 2018 Advanced Micro Devices, Inc.
+ *
+ * Permission is hereby granted, free of charge, to any person obtaining a
+ * copy of this software and associated documentation files (the "Software"),
+ * to deal in the Software without restriction, including without limitation
+ * the rights to use, copy, modify, merge, publish, distribute, sublicense,
+ * and/or sell copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following conditions:
+ *
+ * The above copyright notice and this permission notice shall be included in
+ * all copies or substantial portions of the Software.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+ * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+ * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
+ * THE COPYRIGHT HOLDER(S) OR AUTHOR(S) BE LIABLE FOR ANY CLAIM, DAMAGES OR
+ * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
+ * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ * OTHER DEALINGS IN THE SOFTWARE.
+ *
+ * Authors: AMD
+ *
+ */
+
+#include "hdcp.h"
+
+static inline enum mod_hdcp_status check_receiver_id_list_ready(struct mod_hdcp *hdcp)
+{
+	uint8_t is_ready = 0;
+
+	if (is_dp_hdcp(hdcp))
+		is_ready = (hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_READY_MASK_DP) ? 1 : 0;
+	else
+		is_ready = ((hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_READY_MASK) &&
+				(hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZE_MASK)) ? 1 : 0;
+	return is_ready ? MOD_HDCP_STATUS_SUCCESS :
+			MOD_HDCP_STATUS_HDCP2_RX_ID_LIST_NOT_READY;
+}
+
+static inline enum mod_hdcp_status check_hdcp2_capable(struct mod_hdcp *hdcp)
+{
+	enum mod_hdcp_status status;
+
+	if (is_dp_hdcp(hdcp))
+		status = ((hdcp->auth.msg.hdcp2.rxcaps_dp[2] &
+						RXCAPS_BYTE0_HDCP_CAPABLE_MASK_DP) &&
+				(hdcp->auth.msg.hdcp2.rxcaps_dp[0] ==
+						RXCAPS_BYTE2_HDCP2_VERSION_DP)) ?
+				MOD_HDCP_STATUS_SUCCESS :
+				MOD_HDCP_STATUS_HDCP2_NOT_CAPABLE;
+	else
+		status = (hdcp->auth.msg.hdcp2.hdcp2version_hdmi & VERSION_HDCP2_MASK) ?
+				MOD_HDCP_STATUS_SUCCESS :
+				MOD_HDCP_STATUS_HDCP2_NOT_CAPABLE;
+	return status;
+}
+
+static inline enum mod_hdcp_status check_reauthentication_request(
+		struct mod_hdcp *hdcp)
+{
+	uint8_t ret = 0;
+
+	if (is_dp_hdcp(hdcp))
+		ret = (hdcp->auth.msg.hdcp2.rxstatus &
+				RXSTATUS_REAUTH_REQUEST_MASK_DP) ?
+				MOD_HDCP_STATUS_HDCP2_REAUTH_REQUEST :
+				MOD_HDCP_STATUS_SUCCESS;
+	else
+		ret = (hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_REAUTH_REQUEST_MASK) ?
+				MOD_HDCP_STATUS_HDCP2_REAUTH_REQUEST :
+				MOD_HDCP_STATUS_SUCCESS;
+	return ret;
+}
+
+static inline enum mod_hdcp_status check_link_integrity_failure_dp(
+		struct mod_hdcp *hdcp)
+{
+	return (hdcp->auth.msg.hdcp2.rxstatus &
+			RXSTATUS_LINK_INTEGRITY_FAILURE_MASK_DP) ?
+			MOD_HDCP_STATUS_HDCP2_REAUTH_LINK_INTEGRITY_FAILURE :
+			MOD_HDCP_STATUS_SUCCESS;
+}
+
+static enum mod_hdcp_status check_ake_cert_available(struct mod_hdcp *hdcp)
+{
+	enum mod_hdcp_status status;
+	uint16_t size;
+
+	if (is_dp_hdcp(hdcp)) {
+		status = MOD_HDCP_STATUS_SUCCESS;
+	} else {
+		status = mod_hdcp_read_rxstatus(hdcp);
+		if (status == MOD_HDCP_STATUS_SUCCESS) {
+			size = hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZE_MASK;
+			status = (size == sizeof(hdcp->auth.msg.hdcp2.ake_cert)) ?
+					MOD_HDCP_STATUS_SUCCESS :
+					MOD_HDCP_STATUS_HDCP2_AKE_CERT_PENDING;
+		}
+	}
+	return status;
+}
+
+static enum mod_hdcp_status check_h_prime_available(struct mod_hdcp *hdcp)
+{
+	enum mod_hdcp_status status;
+	uint8_t size;
+
+	status = mod_hdcp_read_rxstatus(hdcp);
+	if (status != MOD_HDCP_STATUS_SUCCESS)
+		goto out;
+
+	if (is_dp_hdcp(hdcp)) {
+		status = (hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_H_P_AVAILABLE_MASK_DP) ?
+				MOD_HDCP_STATUS_SUCCESS :
+				MOD_HDCP_STATUS_HDCP2_H_PRIME_PENDING;
+	} else {
+		size = hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZE_MASK;
+		status = (size == sizeof(hdcp->auth.msg.hdcp2.ake_h_prime)) ?
+				MOD_HDCP_STATUS_SUCCESS :
+				MOD_HDCP_STATUS_HDCP2_H_PRIME_PENDING;
+	}
+out:
+	return status;
+}
+
+static enum mod_hdcp_status check_pairing_info_available(struct mod_hdcp *hdcp)
+{
+	enum mod_hdcp_status status;
+	uint8_t size;
+
+	status = mod_hdcp_read_rxstatus(hdcp);
+	if (status != MOD_HDCP_STATUS_SUCCESS)
+		goto out;
+
+	if (is_dp_hdcp(hdcp)) {
+		status = (hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_PAIRING_AVAILABLE_MASK_DP) ?
+				MOD_HDCP_STATUS_SUCCESS :
+				MOD_HDCP_STATUS_HDCP2_PAIRING_INFO_PENDING;
+	} else {
+		size = hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZE_MASK;
+		status = (size == sizeof(hdcp->auth.msg.hdcp2.ake_pairing_info)) ?
+				MOD_HDCP_STATUS_SUCCESS :
+				MOD_HDCP_STATUS_HDCP2_PAIRING_INFO_PENDING;
+	}
+out:
+	return status;
+}
+
+static enum mod_hdcp_status poll_l_prime_available(struct mod_hdcp *hdcp)
+{
+	enum mod_hdcp_status status;
+	uint8_t size;
+	uint16_t max_wait = 20000; // units of us
+	uint16_t num_polls = 5;
+	uint16_t wait_time = max_wait / num_polls;
+
+	if (is_dp_hdcp(hdcp))
+		status = MOD_HDCP_STATUS_INVALID_OPERATION;
+	else
+		for (; num_polls; num_polls--) {
+			udelay(wait_time);
+
+			status = mod_hdcp_read_rxstatus(hdcp);
+			if (status != MOD_HDCP_STATUS_SUCCESS)
+				break;
+
+			size = hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZE_MASK;
+			status = (size == sizeof(hdcp->auth.msg.hdcp2.lc_l_prime)) ?
+					MOD_HDCP_STATUS_SUCCESS :
+					MOD_HDCP_STATUS_HDCP2_L_PRIME_PENDING;
+			if (status == MOD_HDCP_STATUS_SUCCESS)
+				break;
+		}
+	return status;
+}
+
+static enum mod_hdcp_status check_stream_ready_available(struct mod_hdcp *hdcp)
+{
+	enum mod_hdcp_status status;
+	uint8_t size;
+
+	if (is_dp_hdcp(hdcp)) {
+		status = MOD_HDCP_STATUS_INVALID_OPERATION;
+	} else {
+		status = mod_hdcp_read_rxstatus(hdcp);
+		if (status != MOD_HDCP_STATUS_SUCCESS)
+			goto out;
+		size = hdcp->auth.msg.hdcp2.rxstatus & RXSTATUS_MSG_SIZE_MASK;
+		status = (size == sizeof(hdcp->auth.msg.hdcp2.repeater_auth_stream_ready)) ?
+				MOD_HDCP_STATUS_SUCCESS :
+				MOD_HDCP_STATUS_HDCP2_STREAM_READY_PENDING;
+	}
+out:
+	return status;
+}
+
+static inline uint8_t get_device_count(struct mod_hdcp *hdcp)
+{
+	return ((hdcp->auth.msg.hdcp2.rx_id_list[2] & RXIDLIST_DEVICE_COUNT_LOWER_MASK) >> 4) +
+		((hdcp->auth.msg.hdcp2.rx_id_list[1] & RXIDLIST_DEVICE_COUNT_UPPER_MASK) << 4);
+}
+
+static enum mod_hdcp_status check_device_count(struct mod_hdcp *hdcp)
+{
+	/* device count must be greater than or equal to tracked hdcp displays */
+	return (get_device_count(hdcp) < get_added_display_count(hdcp)) ?
+			MOD_HDCP_STATUS_HDCP2_DEVICE_COUNT_MISMATCH_FAILURE :
+			MOD_HDCP_STATUS_SUCCESS;
+}
+
+static uint8_t process_rxstatus(struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input,
+		enum mod_hdcp_status *status)
+{
+	if (!mod_hdcp_execute_and_set(mod_hdcp_read_rxstatus,
+			&input->rxstatus_read, status,
+			hdcp, "rxstatus_read"))
+		goto out;
+	if (!mod_hdcp_execute_and_set(check_reauthentication_request,
+			&input->reauth_request_check, status,
+			hdcp, "reauth_request_check"))
+		goto out;
+	if (is_dp_hdcp(hdcp)) {
+		if (!mod_hdcp_execute_and_set(check_link_integrity_failure_dp,
+				&input->link_integrity_check_dp, status,
+				hdcp, "link_integrity_check_dp"))
+			goto out;
+	}
+	if (hdcp->connection.is_repeater)
+		if (check_receiver_id_list_ready(hdcp) ==
+				MOD_HDCP_STATUS_SUCCESS) {
+			HDCP_INPUT_PASS_TRACE(hdcp, "rx_id_list_ready");
+			event_ctx->rx_id_list_ready = 1;
+			if (is_dp_hdcp(hdcp))
+				hdcp->auth.msg.hdcp2.rx_id_list_size =
+						sizeof(hdcp->auth.msg.hdcp2.rx_id_list);
+			else
+				hdcp->auth.msg.hdcp2.rx_id_list_size =
+						hdcp->auth.msg.hdcp2.rxstatus & 0x3FF;
+		}
+out:
+	return (*status == MOD_HDCP_STATUS_SUCCESS);
+}
+
+static enum mod_hdcp_status known_hdcp2_capable_rx(struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input)
+{
+	enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
+
+	if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK) {
+		event_ctx->unexpected_event = 1;
+		goto out;
+	}
+	if (!mod_hdcp_execute_and_set(mod_hdcp_read_hdcp2version,
+			&input->hdcp2version_read, &status,
+			hdcp, "hdcp2version_read"))
+		goto out;
+	if (!mod_hdcp_execute_and_set(check_hdcp2_capable,
+			&input->hdcp2_capable_check, &status,
+			hdcp, "hdcp2_capable"))
+		goto out;
+out:
+	return status;
+}
+
+static enum mod_hdcp_status send_ake_init(struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input)
+{
+	enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
+
+	if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK) {
+		event_ctx->unexpected_event = 1;
+		goto out;
+	}
+	if (!mod_hdcp_execute_and_set(mod_hdcp_add_display_topology,
+			&input->add_topology, &status,
+			hdcp, "add_topology"))
+		goto out;
+	if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_create_session,
+			&input->create_session, &status,
+			hdcp, "create_session"))
+		goto out;
+	if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_prepare_ake_init,
+			&input->ake_init_prepare, &status,
+			hdcp, "ake_init_prepare"))
+		goto out;
+	if (!mod_hdcp_execute_and_set(mod_hdcp_write_ake_init,
+			&input->ake_init_write, &status,
+			hdcp, "ake_init_write"))
+		goto out;
+out:
+	return status;
+}
+
+static enum mod_hdcp_status validate_ake_cert(struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input)
+{
+	enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
+
+
+	if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK &&
+			event_ctx->event != MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {
+		event_ctx->unexpected_event = 1;
+		goto out;
+	}
+
+	if (is_hdmi_dvi_sl_hdcp(hdcp))
+		if (!mod_hdcp_execute_and_set(check_ake_cert_available,
+				&input->ake_cert_available, &status,
+				hdcp, "ake_cert_available"))
+			goto out;
+	if (!mod_hdcp_execute_and_set(mod_hdcp_read_ake_cert,
+			&input->ake_cert_read, &status,
+			hdcp, "ake_cert_read"))
+		goto out;
+	if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_validate_ake_cert,
+			&input->ake_cert_validation, &status,
+			hdcp, "ake_cert_validation"))
+		goto out;
+out:
+	return status;
+}
+
+static enum mod_hdcp_status send_no_stored_km(struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input)
+{
+	enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
+
+	if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK) {
+		event_ctx->unexpected_event = 1;
+		goto out;
+	}
+
+	if (!mod_hdcp_execute_and_set(mod_hdcp_write_no_stored_km,
+			&input->no_stored_km_write, &status,
+			hdcp, "no_stored_km_write"))
+		goto out;
+out:
+	return status;
+}
+
+static enum mod_hdcp_status read_h_prime(struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input)
+{
+	enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
+
+	if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK &&
+			event_ctx->event != MOD_HDCP_EVENT_CPIRQ &&
+			event_ctx->event != MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {
+		event_ctx->unexpected_event = 1;
+		goto out;
+	}
+
+	if (!mod_hdcp_execute_and_set(check_h_prime_available,
+			&input->h_prime_available, &status,
+			hdcp, "h_prime_available"))
+		goto out;
+
+	if (!mod_hdcp_execute_and_set(mod_hdcp_read_h_prime,
+			&input->h_prime_read, &status,
+			hdcp, "h_prime_read"))
+		goto out;
+out:
+	return status;
+}
+
+static enum mod_hdcp_status read_pairing_info_and_validate_h_prime(
+		struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input)
+{
+	enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
+
+	if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK &&
+			event_ctx->event != MOD_HDCP_EVENT_CPIRQ &&
+			event_ctx->event != MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {
+		event_ctx->unexpected_event = 1;
+		goto out;
+	}
+
+	if (!mod_hdcp_execute_and_set(check_pairing_info_available,
+			&input->pairing_available, &status,
+			hdcp, "pairing_available"))
+		goto out;
+	if (!mod_hdcp_execute_and_set(mod_hdcp_read_pairing_info,
+			&input->pairing_info_read, &status,
+			hdcp, "pairing_info_read"))
+		goto out;
+	if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_validate_h_prime,
+			&input->h_prime_validation, &status,
+			hdcp, "h_prime_validation"))
+		goto out;
+out:
+	return status;
+}
+
+static enum mod_hdcp_status send_stored_km(struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input)
+{
+	enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
+
+	if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK) {
+		event_ctx->unexpected_event = 1;
+		goto out;
+	}
+
+	if (!mod_hdcp_execute_and_set(mod_hdcp_write_stored_km,
+			&input->stored_km_write, &status,
+			hdcp, "stored_km_write"))
+		goto out;
+out:
+	return status;
+}
+
+static enum mod_hdcp_status validate_h_prime(struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input)
+{
+	enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
+
+	if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK &&
+			event_ctx->event != MOD_HDCP_EVENT_CPIRQ &&
+			event_ctx->event != MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {
+		event_ctx->unexpected_event = 1;
+		goto out;
+	}
+
+	if (!mod_hdcp_execute_and_set(check_h_prime_available,
+			&input->h_prime_available, &status,
+			hdcp, "h_prime_available"))
+		goto out;
+	if (!mod_hdcp_execute_and_set(mod_hdcp_read_h_prime,
+			&input->h_prime_read, &status,
+			hdcp, "h_prime_read"))
+		goto out;
+	if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_validate_h_prime,
+			&input->h_prime_validation, &status,
+			hdcp, "h_prime_validation"))
+		goto out;
+out:
+	return status;
+}
+
+static enum mod_hdcp_status locality_check(struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input)
+{
+	enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
+
+	if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK) {
+		event_ctx->unexpected_event = 1;
+		goto out;
+	}
+
+	if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_prepare_lc_init,
+			&input->lc_init_prepare, &status,
+			hdcp, "lc_init_prepare"))
+		goto out;
+	if (!mod_hdcp_execute_and_set(mod_hdcp_write_lc_init,
+			&input->lc_init_write, &status,
+			 hdcp, "lc_init_write"))
+		goto out;
+	if (is_dp_hdcp(hdcp))
+		udelay(16000);
+	else
+		if (!mod_hdcp_execute_and_set(poll_l_prime_available,
+				&input->l_prime_available_poll, &status,
+				hdcp, "l_prime_available_poll"))
+			goto out;
+	if (!mod_hdcp_execute_and_set(mod_hdcp_read_l_prime,
+			&input->l_prime_read, &status,
+			hdcp, "l_prime_read"))
+		goto out;
+	if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_validate_l_prime,
+			&input->l_prime_validation, &status,
+			hdcp, "l_prime_validation"))
+		goto out;
+out:
+	return status;
+}
+
+static enum mod_hdcp_status exchange_ks_and_test_for_repeater(struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input)
+{
+	enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
+
+	if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK) {
+		event_ctx->unexpected_event = 1;
+		goto out;
+	}
+
+	if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_prepare_eks,
+			&input->eks_prepare, &status,
+			hdcp, "eks_prepare"))
+		goto out;
+	if (!mod_hdcp_execute_and_set(mod_hdcp_write_eks,
+			&input->eks_write, &status,
+			hdcp, "eks_write"))
+		goto out;
+out:
+	return status;
+}
+
+static enum mod_hdcp_status enable_encryption(struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input)
+{
+	enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
+
+	if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK &&
+			event_ctx->event != MOD_HDCP_EVENT_CPIRQ) {
+		event_ctx->unexpected_event = 1;
+		goto out;
+	}
+	if (event_ctx->event == MOD_HDCP_EVENT_CPIRQ) {
+		process_rxstatus(hdcp, event_ctx, input, &status);
+		goto out;
+	}
+
+	if (is_hdmi_dvi_sl_hdcp(hdcp)) {
+		if (!process_rxstatus(hdcp, event_ctx, input, &status))
+			goto out;
+		if (event_ctx->rx_id_list_ready)
+			goto out;
+	}
+	if (!mod_hdcp_execute_and_set(mod_hdcp_hdcp2_enable_encryption,
+			&input->enable_encryption, &status,
+			hdcp, "enable_encryption"))
+		goto out;
+	if (is_dp_mst_hdcp(hdcp)) {
+		if (!mod_hdcp_execute_and_set(
+				mod_hdcp_hdcp2_enable_dp_stream_encryption,
+				&input->stream_encryption_dp, &status,
+				hdcp, "stream_encryption_dp"))
+			goto out;
+	}
+out:
+	return status;
+}
+
+static enum mod_hdcp_status authenticated(struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input)
+{
+	enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
+
+	if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK &&
+			event_ctx->event != MOD_HDCP_EVENT_CPIRQ) {
+		event_ctx->unexpected_event = 1;
+		goto out;
+	}
+
+	if (!process_rxstatus(hdcp, event_ctx, input, &status))
+		goto out;
+	if (event_ctx->rx_id_list_ready)
+		goto out;
+out:
+	return status;
+}
+
+static enum mod_hdcp_status wait_for_rx_id_list(struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input)
+{
+	enum mod_hdcp_status status = MOD_HDCP_STATUS_SUCCESS;
+
+	if (event_ctx->event != MOD_HDCP_EVENT_CALLBACK &&
+			event_ctx->event != MOD_HDCP_EVENT_CPIRQ &&
+			event_ctx->event != MOD_HDCP_EVENT_WATCHDOG_TIMEOUT) {
+		event_ctx->unexpected_event = 1;
+		goto out;
+	}
+
+	if (!process_rxstatus(hdcp, event_ctx, input, &status))
+		goto out;
+	if (!event_ctx->rx_id_list_ready) {
+		status = MOD_HDCP_STATUS_HDCP2_RX_ID_LIST_NOT_READY;
+		goto out;
+	}
+out:
+	return status;
+}
+
+static enum mod_hdcp_status verify_rx_id_list_and_send_ack(struct mod_hdcp *hdcp,
+		struct mod_hdcp_event_context *event_ctx,
+		struct mod_hdcp_transition_input_hdcp2 *input)
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/258757195.12173.1578600426898.JavaMail.javamailuser%40localhost.

------=_Part_12172_164190549.1578600426176--
