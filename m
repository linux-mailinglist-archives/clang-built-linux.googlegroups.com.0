Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBEUETXVAKGQEHP53RTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id B165680C9D
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Aug 2019 22:37:38 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id x2sf39776495wru.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Aug 2019 13:37:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564951058; cv=pass;
        d=google.com; s=arc-20160816;
        b=fCrJ95gHEJRcT8dlR+sBLcxXKG1iSICuf68PL3ZGYHzlsd2wY90ZYEWL5gAuBJECMw
         jepobakOcqE5W8WBebmchUk+dwwK0AfEO4TQgtodzl+oOVRQVoYVytRjo0JgGrvYCiYw
         1t4sGQdiq/y3GSjgXP8oFkppXnzJGv8roPOuLt7iPlOpDioiOF6YCVKPJHTfn94JqMN+
         xlq/O0pDSh+AYdNq076XK66H1FnoLcav8hDpn+kUZIjRqF6njSmuerqHGYqEijtqyQcW
         OyjU9iXMRqgt1BAaXo6lIOLdaTz+B/nopfqDYyhK/x2qWRT9neOEffdAEtXv5Kncj9cc
         f2Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=IcKM/wakJ0AJQq7XUBbvOQuo+ABZWjO4UaAPUwbv3OU=;
        b=j2GHU1gWk/mytyhhgPEm00Ob2tqIuNo1eJAGpIdhnVQlJ14b9E6UmxykSc93lJSZB5
         ccGzkgoqoNjDr7ZH39gWzaK9HepiXgCmW4jIMF11wUEXvr8/E+QLwT5WAW+vs8fIkSy3
         HgXmbW2Xm0OYgUOvdJL+uBprI9c1wT5VUcYE7xqvCfyCnxGLhiuoL+O7UFLw5SNhosiC
         jAdMAGJzdTWtXcOzIZPYRLuwHFQnEcyeslq2eaaNRQWYv+XTGPsRxsZJleK+Q8b4NLPf
         oiehHLJC74N8PgU2AJDxz+1UnDi49xXbOMgUIQl5wJIzRQL4Lsao8GxgADT1Zvh8nstZ
         Xkyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D7Zvh7ZP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IcKM/wakJ0AJQq7XUBbvOQuo+ABZWjO4UaAPUwbv3OU=;
        b=VBzFK7smdRN1I5iDqR0ZqJ2sTa5ugzc8cWHVOybL3mSLXYUtJRCRC/q2aNq1IXVJze
         MWOfsfu10Kq0U5aJWGx8Jjix7elImF+y4qP1mNOC/3UF57cKVG5IbHo4+5T4TRH3InDF
         fDc2xy96ipuHUaxCobv/TkWkhi/yNcsZOQbTzmbYbSmjiytZVr/A4fAJ4GQbcp4MDmt5
         y7wB+pmrCidwG3YxlW+x+hcspK/JVbt7FxBWZfNa+CrjIdUAvAP6tH2AvlgvBHJdEMKc
         CafCV8NkHZ50Z9UUJs1DeRJGWPeqBKbchzxPTs6ChowaNhU6FcBYaMngCqZn6ZMWJvKv
         Wf8A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IcKM/wakJ0AJQq7XUBbvOQuo+ABZWjO4UaAPUwbv3OU=;
        b=HxamMfGEtJ4CiEsIz+xHt9JZxFOvt0RqVxm+0qArnDySUoQGuA2j8BkM9yKqIAKp9c
         DnOBufV0m9JRT5qEtDsm2hsbHxlRx7igj/J3Rs4IomnRaOr1yq+03kACMQuMJ77jg9kf
         q4dTOK0yak7dcwsDpBvsywyld0Xn2D+8XEN0ZqwagKV9ZJr4aoEFFU+pbk6e1WHeR6f7
         ChwRYrGoGsoYwLXkJSQF71fN15levW2+URsvTMKrSDYVO8ETlvCwZpG4ZmU7VMGO7Cfs
         h+EkTZdINHQTLqrbnmt+hLe49SPksxfbCYEm3zQfrESOefgfQwJawWB68BkXpK9VynD6
         cNfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IcKM/wakJ0AJQq7XUBbvOQuo+ABZWjO4UaAPUwbv3OU=;
        b=Llf7erYYEX7RXjvVrq9qkvzMSJXErFA2TJw7p9wNyUSGh1wp+56sPsQAnQGUopviRE
         eEYhSpD7p752evuHjVQ4dqTXJsjq8+sPQGcep7pH0cis0kJhic3S+qJIdjxz6RjsdM6Y
         Lo2PmRL+Kwio7GPd5b2YDIyKbwIIcUxPNOBYDR1gEFxbhpgFTfu4UgAhtvWpEWDZ9esc
         e/GDDa/edzVhtln8fhYCfoNPMuyA+WTVUBUoSbNBmD04Z8Ko0Ln6We3ZM9HvJMCuicBp
         81adv7wM4HEwmCqV5TfGSO0Eg8xC+qDRJDQWmAQBb7VZIlNDnII5WBBoPGTFbTWEfl8i
         mddQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXjy2lr3ICGb++X+OPPxKGG14Znel/aAXPtqktERdjx8jGd/Iw1
	j9nfF42JlgcxsmOnzRuvnGU=
X-Google-Smtp-Source: APXvYqxTYICE1Ew9nM5NVkUJnc2HP001nuoOIJwMjbqLPVplp5enQV9nhcB8+REaPUGIvuHvmkgFBw==
X-Received: by 2002:a05:600c:114f:: with SMTP id z15mr14551058wmz.131.1564951058385;
        Sun, 04 Aug 2019 13:37:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c05a:: with SMTP id u26ls28308258wmc.4.canary-gmail;
 Sun, 04 Aug 2019 13:37:38 -0700 (PDT)
X-Received: by 2002:a1c:6504:: with SMTP id z4mr14304780wmb.172.1564951057983;
        Sun, 04 Aug 2019 13:37:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564951057; cv=none;
        d=google.com; s=arc-20160816;
        b=akwW8L0raV0aiEVhjh1K9raVK49qBP4GfUr1vakVCBTpFMwCBs5jWqfn9RVNOzNmct
         o2fzJGj7YaMt6o/n6d2fbzZIPdXjawxd9NqTUQZ3UwXsmlBEOUGp8Bs2z4q5dHDA33Ha
         j60tEPYbnuXWCPCpL+G77f/ICh2RS3mOYJsIXr7HOFAE+H2ReQNQZg3dp2nF3Ni2Fv9L
         exbYVBSPen1WQVZ4ZUnEdTCGXt7LuWtfNZzYtT4GnNAtCX8OoDDZMmcEqS6bNyNrpUFk
         n+PWCHrYK17EAQ81uLBrT8OGLwF5GtAXSadS2IuCEnh6qpySoxUdbjmWpEh5DZ94EFbb
         aVDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=iWNx36oE65qDX237zR+lZS9AWYsuEyWJDxjNBY9blK0=;
        b=Asb3GVHBgC9cfjcdyhqaya/oIGOhkNeJP/Zthewf9KpUstKx4CsezQlJfeQTsJq46z
         pYWlKu/91is/bQWExmGqUnq3xpHyTeMv6HxNqHiDujCmUplgOb70NyOOvmM9qi4ZLx5W
         M3AOzkilmX19xgsU2ZNOshtuNxG3TYG3uU3jBya1XTwdlBw4iCA/rGvPbzv673LwQwXm
         9isY9GsEXQH659uJKm1rrPHHcd5OViFCA6NdfTVjGYLMxKDofhiRGJvPfYq/vT1Ngkxx
         IIxdoMsaFv81L/E3o+YdumsPf4k5KsmlWr8Lil8o1rACzxBxgsDFRzG6ntWwDGWfM7zw
         Xn7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=D7Zvh7ZP;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id p2si350314wmg.4.2019.08.04.13.37.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Aug 2019 13:37:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Received: by mail-wr1-x42f.google.com with SMTP id g17so82337894wrr.5
        for <clang-built-linux@googlegroups.com>; Sun, 04 Aug 2019 13:37:37 -0700 (PDT)
X-Received: by 2002:adf:e444:: with SMTP id t4mr55585602wrm.262.1564951056732;
        Sun, 04 Aug 2019 13:37:36 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c30sm160412887wrb.15.2019.08.04.13.37.35
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 04 Aug 2019 13:37:35 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Evan Quan <evan.quan@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>
Cc: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/amd/powerplay: Zero initialize some variables
Date: Sun,  4 Aug 2019 13:37:13 -0700
Message-Id: <20190804203713.13724-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=D7Zvh7ZP;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns (only Navi warning shown but Arcturus warns as well):

drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1534:4: warning:
variable 'asic_default_power_limit' is used uninitialized whenever '?:'
condition is false [-Wsometimes-uninitialized]
                        smu_read_smc_arg(smu, &asic_default_power_limit);
                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/amd/amdgpu/../powerplay/inc/amdgpu_smu.h:588:3: note:
expanded from macro 'smu_read_smc_arg'
        ((smu)->funcs->read_smc_arg? (smu)->funcs->read_smc_arg((smu), (arg)) : 0)
         ^~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1550:30: note:
uninitialized use occurs here
                smu->default_power_limit = asic_default_power_limit;
                                           ^~~~~~~~~~~~~~~~~~~~~~~~
drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1534:4: note:
remove the '?:' if its condition is always true
                        smu_read_smc_arg(smu, &asic_default_power_limit);
                        ^
drivers/gpu/drm/amd/amdgpu/../powerplay/inc/amdgpu_smu.h:588:3: note:
expanded from macro 'smu_read_smc_arg'
        ((smu)->funcs->read_smc_arg? (smu)->funcs->read_smc_arg((smu), (arg)) : 0)
         ^
drivers/gpu/drm/amd/amdgpu/../powerplay/navi10_ppt.c:1517:35: note:
initialize the variable 'asic_default_power_limit' to silence this
warning
        uint32_t asic_default_power_limit;
                                         ^
                                          = 0
1 warning generated.

As the code is currently written, if read_smc_arg were ever NULL, arg
would fail to be initialized but the code would continue executing as
normal because the return value would just be zero.

There are a few different possible solutions to resolve this class
of warnings which have appeared in these drivers before:

1. Assume the function pointer will never be NULL and eliminate the
   wrapper macros.

2. Have the wrapper macros initialize arg when the function pointer is
   NULL.

3. Have the wrapper macros return an error code instead of 0 when the
   function pointer is NULL so that the callsites can properly bail out
   before arg can be used.

4. Initialize arg at the top of its function.

Number four is the path of least resistance right now as every other
change will be driver wide so do that here. I only make the comment
now as food for thought.

Fixes: b4af964e75c4 ("drm/amd/powerplay: make power limit retrieval as asic specific")
Link: https://github.com/ClangBuiltLinux/linux/issues/627
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/amd/powerplay/arcturus_ppt.c | 2 +-
 drivers/gpu/drm/amd/powerplay/navi10_ppt.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/powerplay/arcturus_ppt.c b/drivers/gpu/drm/amd/powerplay/arcturus_ppt.c
index 215f7173fca8..b92eded7374f 100644
--- a/drivers/gpu/drm/amd/powerplay/arcturus_ppt.c
+++ b/drivers/gpu/drm/amd/powerplay/arcturus_ppt.c
@@ -1326,7 +1326,7 @@ static int arcturus_get_power_limit(struct smu_context *smu,
 				     bool asic_default)
 {
 	PPTable_t *pptable = smu->smu_table.driver_pptable;
-	uint32_t asic_default_power_limit;
+	uint32_t asic_default_power_limit = 0;
 	int ret = 0;
 	int power_src;
 
diff --git a/drivers/gpu/drm/amd/powerplay/navi10_ppt.c b/drivers/gpu/drm/amd/powerplay/navi10_ppt.c
index 106352a4fb82..d844bc8411aa 100644
--- a/drivers/gpu/drm/amd/powerplay/navi10_ppt.c
+++ b/drivers/gpu/drm/amd/powerplay/navi10_ppt.c
@@ -1514,7 +1514,7 @@ static int navi10_get_power_limit(struct smu_context *smu,
 				     bool asic_default)
 {
 	PPTable_t *pptable = smu->smu_table.driver_pptable;
-	uint32_t asic_default_power_limit;
+	uint32_t asic_default_power_limit = 0;
 	int ret = 0;
 	int power_src;
 
-- 
2.23.0.rc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190804203713.13724-1-natechancellor%40gmail.com.
