Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB2WTYX3AKGQE3AYDLZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 210DE1E883E
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:00:43 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id i185sf50873lji.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:00:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782442; cv=pass;
        d=google.com; s=arc-20160816;
        b=jJaXtfqEkQhwO84ynOvFaIeCBF0nG38dtmeSYxE+FQBN+z36JU2CDjS9M+38772yij
         b4wUrrWHjj3cgsk8Ya8Om9MK550JVWLAFFq75ZEYl19ylroRrJrZwT4pwsKLZysOnvUb
         y1jphU1oDsU2OfENRtOL3UYSoV+7W4bs+y4MuHccnArgLs50lr9TQZxrzApEm2Rsnmj0
         ci7wyDBeKCf0em2IeZJqD2z2NeOjCWYZz3F9IzuTjSS3vjNjE9GlI7r9Hz/MMobtaRXe
         FLZXPpUzLY/e1ye9XjTDwS784QKSMYemlP2rO/ItCjMnY1lBLedDv6Z0j4AyVNdF81EB
         Jn2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=RA9VQoS4DleVtIIamemOmWqHYt7pDLU2huqnSI6IUgc=;
        b=BebZsiElv8LMuZTi0LLUu5YzBOML3vuvqKGecdXqQAlHpaVQhzsmoX72iFPRzi0EyW
         5WNGAzniusZkPkB3sU8l+IQITTCASW9Be39Y9YTHVzpoJQ3HqNaVt5LpGPt5PR/1oYg9
         028zE0MzIEjkHAzYoIbPAkwQKGEAQGh+gHDV5Zb90Hx+HqgWSj0NX1HeirLHq2gStpL8
         2Y3eHsMjhDh83n2xp9z2igD6jmshOYio+oWLdfI2DmuOYtKqcJKvNMWAH/uI99qUdPJf
         Mivfb73aHIQUJj/JZfoV36m2HJdsc19tNeV2V3BxgNCsi5o7eoMrA9iSpMaUjMg2OMxq
         1GoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RA9VQoS4DleVtIIamemOmWqHYt7pDLU2huqnSI6IUgc=;
        b=FuMx0g+Jmz9H42ZNuB/VHi574tISiod0HpWqoqN14TU+QnLm6m3aCEiiIY1qPk5zvc
         b1H8KIAo3tQKvBeV14e+FoVMD3cqjw90Wp3tjRYYh+BTlIQBcyM87tu0TTlxNbfVaFAp
         EEZMhtH3+q+sc/+seNzMvHXPxaESTtqOj/MqXg6Mrg3hU+0swrgvy3PcdjxVOGhKmmNA
         PLm1hpEBVz78RykSEawl2xYwF5/p0HNPsFNbI2ONq5ECcGC50V4cdzapXTPcgjr+YVfa
         ETRmGNXGkWu6ElaV3uhl2Mhsd+WnLxXv5oYwohcXQrX5t5/uJ4KgyzyP7yGvXi8PihuI
         lX7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RA9VQoS4DleVtIIamemOmWqHYt7pDLU2huqnSI6IUgc=;
        b=KA+OA89Radn5Ti6gVzlBuXuoPhsmVT8URTXaS/p1LRwpVi1mkXssC46kI4oqSzyc/d
         nsGNwGPdbUd0kO9c5cTgb7O/Hteb5bJ+r/wbi4MCtOnOMhv0oq4Z0wlGop7+EsCxbzuU
         OMOHlxfz3elK8UTp1ewG8dUL07kbQi5gEoS6+sIJFLyC0S7oTd/WuAQIBUqk1rDHuOky
         qfjkQm7FgX9wpA5yzzTWlXcb4tK1jZ0f/3NPrWASp0V0xmzfW2fqD38VPbVxZnuWa14i
         I4S8KO4H50OL40+u7UZ5ilKtyS/xpfDzwnthhk2UYuB1cO9PodaDvBLxYe7WB1N4n1Kk
         Tr5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332DamMfE8VdvfHN2QgWB+zw2fiTzJhLnRiTf61eVCGJA/14HAU
	XXan1O3kOsSIgVCzlNU7Ssg=
X-Google-Smtp-Source: ABdhPJxLn6BF+RLCFAsJ9eNclppKPmHBroaBbXng633Z17EqhaAGLAVTAyzisSoA8ha+PrBvnjnJxQ==
X-Received: by 2002:a2e:9716:: with SMTP id r22mr5243289lji.293.1590782442593;
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7d6:: with SMTP id x205ls646975lff.0.gmail; Fri, 29 May
 2020 13:00:42 -0700 (PDT)
X-Received: by 2002:ac2:5094:: with SMTP id f20mr5293261lfm.128.1590782442000;
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782441; cv=none;
        d=google.com; s=arc-20160816;
        b=uMZZCdjwbSbi6v95HcFroiAyhbGA/+LWX+6L/UopwZb+dmgxC4En71FyCif618mdFX
         wwZ0Gt14SnvcFUC9KHk8ak6wsed3yRpW6GxpuYWXP0/ItId8n2aKyy2AUKBt9zwCDMWk
         Xt+8iuMHzpHQbnkVWIjQoWqG4NtB+abQlE79ACsZIutCP3M2ULmNF/ivNxvbhAS3i04H
         kFtYeClHZOwIgsRznCO+GLcKMTOAZJeGGCc8Loeb+4DitP2wDgCf31u7VnWxp2jA08Gj
         p537IO7Gan0TZaeU92FhlOqiL1m97uZHQMUKUqmF6bjw6DS+xe9O/EbVgvTCBI9+kNI2
         MbZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=r3rtmmGtpKeFfeEyob+lN1MD/7gKdtF/N9+7Xv5ztkg=;
        b=ANCFG7KsWeUK14OeFiKBBgbHFTB+SHhWDGNgw9hTJfdhcNdWhIxOAR+wzN5LrTWjh5
         bad2Q4kPsvlwuX2wJgy0eDSlFN/txH1ZRh1Li8hIaWWav9GPGdaFSIGXOd3xzceGUs4r
         kfjdCfQHPWsTcKNKP4AR3ik9DTVrW0VI8dDaJa2OHaC9aXbZ1Qq7W95JCM1mEfWeKkYB
         XZh7K129dJd1pviHBO01+rrAt074LB3hCIccbZNwpg++zECzBd/P5eT5C86FCPixBS3Z
         v6Rkr3fK7XxSy6bk3SWSEmR9QMVtbMlRubNjMrgvddKHADnjW+QoraU80Q8Q/nNmU5W5
         dRzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id b20si665328lji.6.2020.05.29.13.00.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:00:41 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MKKd7-1jQfCx0lln-00Ljen; Fri, 29 May 2020 22:00:40 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 1/9] staging: media: atomisp: fix incorrect NULL pointer check
Date: Fri, 29 May 2020 22:00:23 +0200
Message-Id: <20200529200031.4117841-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:+wQ8TKuZZFLgm1wvXX36wv2lc/zCPOC+vLEJsLC5Yfq1Bumz0qA
 guL6S2PS4PsHYgRs6AxROCr3xIHck0FKrrQlrX11NPPgtcKwlYyZm1wIqSETblJZmtl7T5Q
 9Y8Q/hqtBh2TXLhX0n+ATAYM9+2CXXVm5CZ8ebg+cLCQRvcKPwGEPKuqX8s1AX+iPmXYS+5
 LdYgEDEprrkuRJEtVt7AQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:D1UYBQNkCe8=:PoxgIynrxog2/f95h2DvhW
 KWSbQWmBKPhWkPo92ILPY191ysfIIZbyZrU4X7NvsdDq2ed/cMecws2eRNuCL6tv/BrcExBLi
 JH6uy4mOm9wRdW3jkOdno+QWekRW3rBVYtgKm/aSsCFRagCw73cgZDBut4FPm54VJjJVUsg1D
 HUGUrLtH94rvbXgJ2vJv30x2YzY5QtTh1/4+DJXsLqBXpyBj2e//I5pjXoRey3ZhL09tqlmPR
 O/xnl8gBilayf+tLsYztc1EITkIiyiW0NMgEQx/6/cnmFBsHowomsG2IsZo3EwSMgIMeNLnQ/
 rszbEok0VTx/pVnc0XZJaq5XJJhIPICZ+HGa/Yc5198Y8uizDu8AVs4VsRv5HD0gEV1HouKEd
 dhl7FNNg/LWRP+IrPGZC3kOD/tw59v+zZE/BCKUuupbxdJjzd+fyutM1ykGKpw7KiZLvaweAr
 +bKNWCZAznU9cZzjeNRSwD8jljMMBkfi39NmMh9EzGvaFVJrc7by5yku3hdYOfqeguNgEs55L
 Xz/foeYVwH3w2giLZmXd8hslWjXIX4dROy9CHlE00jgVg83ONq44rpfEZDcNv09I/KJ9mwcW2
 0oencPzEzNRT4cgeGXG00/aq8/1gQHZw0Z7Q+uJ2HU1DOzEX28oxWA1KzshMAGan93YjFI2sM
 9NtGL23eo7y42lTFCqaZMTV+X4y9s+6GaMy9f/ORvb19uJK76ZLrAYtQcpevFBiSQx/JKMKao
 Eno9LVJ9KGHw3apIDZF76sQXrnkP1KhanVMUelCj5LB69uPhmL8ooG5dNl25lYHkugfl1R4VK
 q0ez07EkbKXswv4PRv5/qfsqezpa1ieV/tBy0TKUDCYpQMuiy4=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Content-Type: text/plain; charset="UTF-8"
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

Checking the pointer to a member of a struct against NULL
is pointless as clang points out:

drivers/staging/media/atomisp/pci/atomisp_cmd.c:4278:17: error: address of 'config->info' will always evaluate to 'true'

Check the original pointer instead, which may also be
unnecessary here, but makes a little more sense.

Fixes: 9d4fa1a16b28 ("media: atomisp: cleanup directory hierarchy")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/atomisp/pci/atomisp_cmd.c | 2 +-
 drivers/staging/media/atomisp/pci/sh_css.c      | 4 ++--
 drivers/staging/media/atomisp/pci/sh_css_sp.c   | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 5be690f876c1..342fc3b34fe0 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -4275,7 +4275,7 @@ int atomisp_param(struct atomisp_sub_device *asd, int flag,
 		    atomisp_css_get_dvs_grid_info(
 			&asd->params.curr_grid_info);
 
-		if (!&config->info) {
+		if (!config) {
 			dev_err(isp->dev, "ERROR: NULL pointer in grid_info\n");
 			return -EINVAL;
 		}
diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index d77432254a2c..e91c6029c651 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -8534,7 +8534,7 @@ ia_css_pipe_load_extension(struct ia_css_pipe *pipe,
 
 	if (firmware->info.isp.type == IA_CSS_ACC_OUTPUT)
 	{
-		if (&pipe->output_stage)
+		if (pipe)
 			append_firmware(&pipe->output_stage, firmware);
 		else {
 			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
@@ -8542,7 +8542,7 @@ ia_css_pipe_load_extension(struct ia_css_pipe *pipe,
 		}
 	} else if (firmware->info.isp.type == IA_CSS_ACC_VIEWFINDER)
 	{
-		if (&pipe->vf_stage)
+		if (pipe)
 			append_firmware(&pipe->vf_stage, firmware);
 		else {
 			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
diff --git a/drivers/staging/media/atomisp/pci/sh_css_sp.c b/drivers/staging/media/atomisp/pci/sh_css_sp.c
index e574396ad0f4..c0e579c1705f 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_sp.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_sp.c
@@ -1022,7 +1022,7 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
 		if (!pipe)
 			return IA_CSS_ERR_INTERNAL_ERROR;
 		ia_css_get_crop_offsets(pipe, &args->in_frame->info);
-	} else if (&binary->in_frame_info)
+	} else if (binary)
 	{
 		pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
 		if (!pipe)
@@ -1036,7 +1036,7 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
 			if (!pipe)
 				return IA_CSS_ERR_INTERNAL_ERROR;
 			ia_css_get_crop_offsets(pipe, &args->in_frame->info);
-		} else if (&binary->in_frame_info) {
+		} else if (binary) {
 			pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
 			if (!pipe)
 				return IA_CSS_ERR_INTERNAL_ERROR;
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200031.4117841-1-arnd%40arndb.de.
