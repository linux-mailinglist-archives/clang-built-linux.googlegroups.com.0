Return-Path: <clang-built-linux+bncBCM33EFK7EJRBPUJTDZQKGQEZHPZXTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A9A17DBE1
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 09:56:30 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id o25sf2625511lfb.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 01:56:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583744190; cv=pass;
        d=google.com; s=arc-20160816;
        b=kEpES0Si8KD/fqMOlykxs5LOaaomvXvPMSNvpNlx4Rhsb5bmhPT1mzBZEr+Ih827IF
         yCNIfsxEjCq9nrt2avinvok37Iv1Xi3ZE9ynSoWdXDq4wHM5hUkLGePOA5/7NflxZylu
         Xh/zZwlqEb7+i0PQZxE+88ye7za39Q8SxZ2lyNaFZqoTN0Y1nBMOyBLDHfRWVA7hr1y4
         d+VcJFxV4gZBhSBW2krZMG+GS1yy/cQQeGewoBvi/4PLSFLAh1agW8HHyg0QrYzUUpZv
         f7nZBP5JXJjrwiKkIIGgmvWVH55mQhlDou9XrWpxw+bjkPnb+fqIUAYVLG1nUw/bnvCP
         DtpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=Nm4Cgcjxc484TjzwH2bn4CPHAfAljc9pC/rr2ZMQpWM=;
        b=CeBWSaHTji0NQkYozE1pCfzgtZZZ9Eofq4smhCzBW/Q0bBARkvzNEkRAIxs68NTEaR
         Wz2dP/BrTauDe0Ax+tJ7SBnRk046CsjegeM3vBRHCHOmdsUmYR9ppiL5qfuKGrOYOoCV
         zu0GjY2/fq+BNQTwPjfP0en8j4vwtvwa1Z/jo8zKLzxb+IPBIvz9Y8h9SwzNKji4IKqM
         66+ddSlYDGH7zjXcO4v5H/sSTLx3ayLTbCtcFB4VyDSo3PbZh2Dlnz15oup8xMddvFIB
         kk5OQLD4Zy253FTj4E1eLpOunRi20UU+fo2aeKypXCo6pU09lJIP91ftun761zIas57d
         QCGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uLX+Fb8S;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nm4Cgcjxc484TjzwH2bn4CPHAfAljc9pC/rr2ZMQpWM=;
        b=ELrxGBX4QLBR8K+92E73XmE7Z/++ZsXtjESPsq54tM4LJgd+D5SK/bOJ6DpNZUF1ij
         jzCLIhWR6ebdKprSCuSHepPd/eqc8FpYt4DPHTbTQh6IGHUOwq8Fy/KWYXQZbwKxhfc6
         wPeeRPzhuHUNqfT9AvQCWZNFZjKLQbT0kZVPVgyJflWK5Adhdrlkfbl7gD9b91EoL3vr
         LNbPuPzjZkx9Jy3ot1k6uu07duWgJEphXTXFBVPCgvbUxSTA4uDwu4shlgohe6wJ+HRF
         XJc0VuCkV+uiZyjWSLwSieTGFeisuncpJUBAcBc0qCUvsthp0JKHfMJzjeqjchBLVKKk
         oFrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Nm4Cgcjxc484TjzwH2bn4CPHAfAljc9pC/rr2ZMQpWM=;
        b=kd7OVvTGCju5IHmvBndYNWEYiHkM+7uzPqODHRuspdzLK1CVt10Ru1FiX2GipGOUCA
         bOMSMRBcWRi677YJHwd9dVuniqGRymAXtRKmCCzjTpkLoQwEN9ggByDCb+FoeDJdZO5C
         eBmeFr/z+UeAfCj7M+MgLrvdCF4PrU8yZb2CGScPBAYyXUhUU4DhKGHk9OLPvDkLIuB6
         VrLn4lQrrV+AGolo4XWAjRpGLPsLauOSzKZpFcX0dFn0Ia7Ww+rm4ydygi5VHdOmUkDR
         lk3g1wh/M0ohMaJUx4o01oN01b1mZ1VIOPh6g+AV0fX/1jlkqYDMpOL3qcnUu1nKmsS/
         nQJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Nm4Cgcjxc484TjzwH2bn4CPHAfAljc9pC/rr2ZMQpWM=;
        b=Mp/UrgPGnFczqt3i8CT5CCHZNlGDMsVN9aWcCORephbKdm0+NB6RxgbI153mI4OlIA
         N/3zJvyhRg4R6eWZQ3krPnNx+4ZE7sxD7WIAqFX4NqRNphaaOtp1+QzzNwP7zk/SmlhU
         qKF+JCPzBPlRqTxKNWMHZCNS1xdVMA0PdtXVrwM0nFUtBTf0n2Vv3+E1PD4rwoWBZwaa
         d6ovT4g+pyVQdByk/E9pdOJACvjkzATDpi594HArvsOGJnYUnqfGX6+HXye8KLcvCsZx
         1M1b8qyBdiLgxc25Fb6VHVQ9/EEA/0v0emV1KhQq7BSRBkUbvllBmXg/saw67GYkgVZL
         J6Vw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2uXsxTS4UL+rfyEHJ6OhebHt08UXTTMO75MiBQNrCFtSvhyBhm
	kFU3zKSAC3ZpFYnE+Lw1XMY=
X-Google-Smtp-Source: ADFU+vtzQP6xxfxlAjKFl/+1dOAvB/SwZ/X1iLlPcnsxkB0AsXz8h19qgLJ2sjbkF2wldhaTvGAOLA==
X-Received: by 2002:a05:6512:143:: with SMTP id m3mr8930816lfo.64.1583744190225;
        Mon, 09 Mar 2020 01:56:30 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a58b:: with SMTP id m11ls1609163ljp.0.gmail; Mon, 09 Mar
 2020 01:56:29 -0700 (PDT)
X-Received: by 2002:a2e:a401:: with SMTP id p1mr2616120ljn.106.1583744189416;
        Mon, 09 Mar 2020 01:56:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583744189; cv=none;
        d=google.com; s=arc-20160816;
        b=hV76fqD2f04448tG4JH86GXhwf/mu5GJwowEQ2YFZb60kwToMWbT+VjLo0CxTUD9mT
         Po2n1LFK3Ig3k2USL2wtP9Ds4zl00QjOO356cKU3lCWqHhd/AAduQe8fV1T5fNG8aCpt
         ZxU37llopBe5BGJONMfGO3BuJJYKgZVE97hZL7DFIGM2veIZ/64eOJD6Lsn8clHIaJX0
         54ZSXMhjQ4sH0+20lKn8HX1q13VjJlyX5kYeKju3Q+xLr0ispqCPe0g6Rnm025ZpOEaQ
         tLA3Pd+Zee73JQTKmX1fPFi3cLNoIddLyFUkcc4ClAp5MY33gB/EWr5XPV03cEXFE95Q
         HQlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=wxf00PuRVN/WLyVWtUJDrkQpOrg9G+jatLQyEfb16Ik=;
        b=kbnNDTACsS9p3BwVsGWqMsPTs/h6i6DEToL5iDazBvKdlrAl9rzd4ju9qDXnjjaDr8
         NUOoQh9GiVjpXsYb6M7mZVkWSaRTJZwPpIahh26u6DxHgXJITbZI+BL0MjO6K7NtvNFN
         EHiUTi+p5LOsovoj5ZaNpVdeiEbTVJ3H8t1m2IxbIWIbtslXec385YR8bn8JPSpobyhk
         WMkGErLGnPD1wZ72BoUz7kTJOcwrGzhjmEdK5OBfWQyvA9o5bvRTaWgDOiS6oPPzbIVj
         NDwORJUIBfHe6b8Rk8GjZUQVyS+MStrlNDW6ee9lH7sQI2KZ17LmD1r0LV7nd686rlkB
         qtyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uLX+Fb8S;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id d12si371889lfi.2.2020.03.09.01.56.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 01:56:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id n8so4832747wmc.4
        for <clang-built-linux@googlegroups.com>; Mon, 09 Mar 2020 01:56:29 -0700 (PDT)
X-Received: by 2002:a05:600c:2:: with SMTP id g2mr18683528wmc.18.1583744188803;
        Mon, 09 Mar 2020 01:56:28 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a58:8532:8700:ad0e:6d33:2184:cead])
        by smtp.gmail.com with ESMTPSA id y12sm18899538wmi.48.2020.03.09.01.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 01:56:28 -0700 (PDT)
From: Ilie Halip <ilie.halip@gmail.com>
To: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Ilie Halip <ilie.halip@gmail.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Igor Lubashev <ilubashe@akamai.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] perf python: better clang detection
Date: Mon,  9 Mar 2020 10:56:17 +0200
Message-Id: <20200309085618.14307-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uLX+Fb8S;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Currently, the setup.py script detects the clang compiler only when invoked
with CC=clang. But when using a specific version (e.g. CC=clang-11), this
doesn't work correctly and wrong compiler flags are set, leading to build
errors.

To properly detect clang, invoke the compiler with -v and check the output.
The first line should start with "clang version ...".

Link: https://github.com/ClangBuiltLinux/linux/issues/903
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
---
 tools/perf/util/setup.py | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/tools/perf/util/setup.py b/tools/perf/util/setup.py
index aa344a163eaf..8a065a6f9713 100644
--- a/tools/perf/util/setup.py
+++ b/tools/perf/util/setup.py
@@ -2,11 +2,13 @@ from os import getenv
 from subprocess import Popen, PIPE
 from re import sub
 
+cc = getenv("CC")
+cc_is_clang = b"clang version" in Popen([cc, "-v"], stderr=PIPE).stderr.readline()
+
 def clang_has_option(option):
-    return [o for o in Popen(['clang', option], stderr=PIPE).stderr.readlines() if b"unknown argument" in o] == [ ]
+    return [o for o in Popen([cc, option], stderr=PIPE).stderr.readlines() if b"unknown argument" in o] == [ ]
 
-cc = getenv("CC")
-if cc == "clang":
+if cc_is_clang:
     from distutils.sysconfig import get_config_vars
     vars = get_config_vars()
     for var in ('CFLAGS', 'OPT'):
@@ -40,7 +42,7 @@ class install_lib(_install_lib):
 cflags = getenv('CFLAGS', '').split()
 # switch off several checks (need to be at the end of cflags list)
 cflags += ['-fno-strict-aliasing', '-Wno-write-strings', '-Wno-unused-parameter', '-Wno-redundant-decls' ]
-if cc != "clang":
+if not cc_is_clang:
     cflags += ['-Wno-cast-function-type' ]
 
 src_perf  = getenv('srctree') + '/tools/perf'
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200309085618.14307-1-ilie.halip%40gmail.com.
