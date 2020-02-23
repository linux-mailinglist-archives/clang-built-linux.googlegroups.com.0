Return-Path: <clang-built-linux+bncBDZ3F5UE24FRBZVHZPZAKGQE4OYWG5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E141699CD
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 20:35:04 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id v14sf5148379pfm.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 11:35:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582486503; cv=pass;
        d=google.com; s=arc-20160816;
        b=YWOVOd00lQh+T78lP/66ud6rSV9MCgAijj9IlotpM19lmvEUoUptjCxr0vQ9b45RwI
         z32bpDhwuqmOOppDy4k4NAl/6y6kRh5Rr4okAV25cgWLAk+UyBvIQpYnh59W0md8x9y1
         aW8QRjpsD+0Zl0yZ3u66jjveB2wwlCvajDRkhJefXRA1JTKseYfpWYhUZoJHQ6UpOPhG
         E6gZhZRP+DEj5juB+MecxB9Fm7G180GqTq2GrElLijIr2KiZldV8nTtHLBgp5q0EmVZI
         RR8nAEXOtjDFJXHSVRxLhSMt7ci3D5u8HC3lmNKPVQgoTDfguDmWTjYX3FI5r7wv5FPF
         Zyiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=jxRR2l2wVXGLEHjMdVKkwAcV9GZwHfblu8f3KNawBww=;
        b=iXSQZm2TRof5eTFcozYo+HR6EXHWwVNcym7eQGyb9pN6NLhLXNjvxwHsxSRvTrNgQP
         08Fsp5L1U45qBosnmYP41/m9h+q/BFUwYP4/rpAk8Gb5XTVRHCI5QQ/TTxjjiJWqmTbF
         p/9H1a0QYYzr5IcVRhfBq2y2cfABgt3H6XnqlpTM2QcmPKmapNagpT1VDixSuXDq+9vq
         ZR3z4fd9vVJp0SMZhZcxG04NAiMBhklV9EdyaEo9VKhcwlpJ+Xd5VMatHOad1DhJPoeb
         9gtHwsOHYeA004zKzuj8lUhsHhXGGrgybvJIZ6X+x3fE3heqgkksOhXXuKBJoPZR15Cg
         Ptnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pbVUvKR8;
       spf=pass (google.com: domain of nick.desaulniers@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jxRR2l2wVXGLEHjMdVKkwAcV9GZwHfblu8f3KNawBww=;
        b=KT6YkaqxWwoeDtxEMlpegUxcXGf4Qfmq1+Z7iMCW5h8qU5nRyqvLtA6olrXzBofzq9
         1fSOz6ptyNGAKIpsmCV2jEE1Lvece40SyBlU6KSw5oIeha9wJoRieqUZY1qP6eogQ3Xx
         uFYZ0S2v7dRT/+K56bdpFh4v2eA92q9j2LQExA47lNjZl+vEQFV2NJtIBc1IIX1MBxau
         frRjkD8PNusvRcP8no+aotlk3vCB2K+mi23VBKKRq5TDgiiYujAh77UMYxNG0YKgnK4I
         wlIrVVza/9GefoNgXtEjkuHsO/fgQnjbZhjuoFL8Oyj1ApQdGYOcCWDKqj1GSXFMkPZu
         i4VQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jxRR2l2wVXGLEHjMdVKkwAcV9GZwHfblu8f3KNawBww=;
        b=WxxTUIY5c7sThOLNBitZRMZ9M2Dz42uQ3zJF8cQqdgQD8L6E7Y5yPqC82p5lCiuFqW
         zGXLgSxdddvxpyLMSPOWBk/5T2uWdVzVSMgKkLIyKWh5tZ2wKgGaiU1L7Hj6Yl1Mo9Bc
         OkERn6spaBM6x/472EXIL1emVcXtVCbZxHBiBjkHOKURufvccfVa4TJ0v683MoiuYjcw
         ExlHlujZtIc3hXouCV+FAgkgP95nqE78wdjR2m6c4EYzPNx0Z4tEo5f/nQpUOB4uANyX
         rjKQfoIlecRMOaOUGpiHEuE+mZWzjux/OmuTv43mk+3L6G89mc5QmH7xaYznVWzi0Ozc
         GVmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jxRR2l2wVXGLEHjMdVKkwAcV9GZwHfblu8f3KNawBww=;
        b=HBAQdMKttFGWuAy2sbzxkrpCa8s17+mAQIDwwyhD0XLgzNw/gPmgSJFLpjDIq2vfuQ
         7CCVc0LO2npDCG9HrnS7Gtv3LnSq2egMF0QGN3UvzGDaa0hELyC50PcvZNaZf8u4/5qN
         gT6cSqNO5kpAOXzjo3mJcvQnN8098Fgjkdz5wStSHA2uf96Nk/peTVFwTaH4MWu6XNJj
         2K4MmRtw4l3j0buK5L63YmydmhXxtOedVjnHViBeS6F4+F6Y/jRiIL+CEDjIeIAOhJPy
         3TXaf1m5PMdPKmox2QH/kqzyezSPfZsE8Up1jv0DepG4dH0Iup9toCraq4+2+SQgs+mr
         nL8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW7UdV4B+fWQ5RuoRvC3bjz3P0J3xydvK4VrovnymZDAIurTI8U
	PAE9n0/rPXyf5IoIV18npo0=
X-Google-Smtp-Source: APXvYqzU4xkRi68Q6DP4Sv1p4XSOJ/24qpVVvhrPpuATXSBTEpE/DEGD4WhzahkRJQC6Q0ELfl9++A==
X-Received: by 2002:a17:90a:cf11:: with SMTP id h17mr16415037pju.103.1582486502757;
        Sun, 23 Feb 2020 11:35:02 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls2480657pgg.2.gmail; Sun, 23 Feb
 2020 11:35:02 -0800 (PST)
X-Received: by 2002:aa7:9a01:: with SMTP id w1mr47076758pfj.231.1582486502282;
        Sun, 23 Feb 2020 11:35:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582486502; cv=none;
        d=google.com; s=arc-20160816;
        b=lOTJYmg/Marxihutv+/aXcQttVi24ZjHDjbTPFhxL2xV/AOTHLRFc0h4K+FaawDVYe
         0baEo1CGRnVS/1qDXh/qQ5/u5vu9s71tAmsagU595SRR5SqokBDRD+6pTkbU1Zuj5Tr0
         5q+nPYU5EJEA9nOynXrNESrGFGpwdKGOh4muY1Aekq0paPrZYSTEPOi3LlEqQUGDSDcE
         SSWbEpnd/BI0ybY+ioy2HpTEtNryQ6HcVd+4aYvORw4WzPi56x0KDgIMK2nFL+2aFY3Y
         broc6zKD+l4tPTwbYXEzwZkqHb+aYb0R+s+8fu/AnWxZAWN8jCa8LMXVRb7PHOpu68uw
         YJFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=bNSAcK1Y4RTVt5w1GiOECuJlGG3CoUMoepsQyoRrLXQ=;
        b=A7dIBxMXfxnmpDp5BxDqWMpu2JbiCr3ohVVN4HN+38O1wll8k56RreIOSNX3bM9QJx
         WKhKK3gguJ38VmBNR2hD4N/XVt/6vtpFiH5r7QJAvIANTpydtqllMp633I1GcZGhqBJG
         Y4+WAjGb/188K8U2NSPyBVisOzBNYnkQUNyy9JPrX1iBkjHNLK6A1l69PATp2C5HU2UF
         P6X6WnkVvtjnUsJHVSeruMyftykl2fEIBKGfd1KADlYYNiguhTsQzWPeKgaGe8VJhH8A
         o9IOvqZ+pZZHzgIKwPLPZeeccfpdrbvNNK96ck5UpWmuOXISSxsK9vPOzkoXjUNRrZYS
         KlEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pbVUvKR8;
       spf=pass (google.com: domain of nick.desaulniers@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id l12si521868plt.5.2020.02.23.11.35.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 11:35:02 -0800 (PST)
Received-SPF: pass (google.com: domain of nick.desaulniers@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id h9so6783956otj.11
        for <clang-built-linux@googlegroups.com>; Sun, 23 Feb 2020 11:35:02 -0800 (PST)
X-Received: by 2002:a05:6830:15a:: with SMTP id j26mr35920326otp.137.1582486501481;
        Sun, 23 Feb 2020 11:35:01 -0800 (PST)
Received: from nick-Blade-Stealth.attlocal.net (23-121-157-107.lightspeed.sntcca.sbcglobal.net. [23.121.157.107])
        by smtp.googlemail.com with ESMTPSA id j13sm3267880oij.56.2020.02.23.11.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2020 11:35:00 -0800 (PST)
From: Nick Desaulniers <nick.desaulniers@gmail.com>
To: acme@kernel.org,
	mingo@redhat.com,
	peterz@infradead.org
Cc: clang-built-linux@googlegroups.com,
	Nick Desaulniers <nick.desaulniers@gmail.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>,
	Namhyung Kim <namhyung@kernel.org>,
	Jin Yao <yao.jin@linux.intel.com>,
	Changbin Du <changbin.du@intel.com>,
	John Keeping <john@metanate.com>,
	Song Liu <songliubraving@fb.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH] perf: fix -Wstring-compare
Date: Sun, 23 Feb 2020 11:34:49 -0800
Message-Id: <20200223193456.25291-1-nick.desaulniers@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: Nick.Desaulniers@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pbVUvKR8;       spf=pass
 (google.com: domain of nick.desaulniers@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=nick.desaulniers@gmail.com;
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

Clang warns:

util/block-info.c:298:18: error: result of comparison against a string
literal is unspecified (use an explicit string comparison function
instead) [-Werror,-Wstring-compare]
        if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
                        ^  ~~~~~~~~~~~~~~~
util/block-info.c:298:51: error: result of comparison against a string
literal is unspecified (use an explicit string comparison function
instead) [-Werror,-Wstring-compare]
        if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
                                                         ^  ~~~~~~~~~~~~~~~
util/block-info.c:298:18: error: result of comparison against a string
literal is unspecified (use an explicit string
comparison function instead) [-Werror,-Wstring-compare]
        if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
                        ^  ~~~~~~~~~~~~~~~
util/block-info.c:298:51: error: result of comparison against a string
literal is unspecified (use an explicit string comparison function
instead) [-Werror,-Wstring-compare]
        if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
                                                         ^  ~~~~~~~~~~~~~~~
util/map.c:434:15: error: result of comparison against a string literal
is unspecified (use an explicit string comparison function instead)
[-Werror,-Wstring-compare]
                if (srcline != SRCLINE_UNKNOWN)
                            ^  ~~~~~~~~~~~~~~~

Link: https://github.com/ClangBuiltLinux/linux/issues/900
Signed-off-by: Nick Desaulniers <nick.desaulniers@gmail.com>
---
Note: was generated off of mainline; can rebase on -next if it doesn't
apply cleanly.


 tools/perf/builtin-diff.c    | 3 ++-
 tools/perf/util/block-info.c | 3 ++-
 tools/perf/util/map.c        | 2 +-
 3 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/tools/perf/builtin-diff.c b/tools/perf/builtin-diff.c
index f8b6ae557d8b..c03c36fde7e2 100644
--- a/tools/perf/builtin-diff.c
+++ b/tools/perf/builtin-diff.c
@@ -1312,7 +1312,8 @@ static int cycles_printf(struct hist_entry *he, struct hist_entry *pair,
 	end_line = map__srcline(he->ms.map, bi->sym->start + bi->end,
 				he->ms.sym);
 
-	if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
+	if ((strncmp(start_line, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0) &&
+	    (strncmp(end_line, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0)) {
 		scnprintf(buf, sizeof(buf), "[%s -> %s] %4ld",
 			  start_line, end_line, block_he->diff.cycles);
 	} else {
diff --git a/tools/perf/util/block-info.c b/tools/perf/util/block-info.c
index c4b030bf6ec2..fbbb6d640dad 100644
--- a/tools/perf/util/block-info.c
+++ b/tools/perf/util/block-info.c
@@ -295,7 +295,8 @@ static int block_range_entry(struct perf_hpp_fmt *fmt, struct perf_hpp *hpp,
 	end_line = map__srcline(he->ms.map, bi->sym->start + bi->end,
 				he->ms.sym);
 
-	if ((start_line != SRCLINE_UNKNOWN) && (end_line != SRCLINE_UNKNOWN)) {
+	if ((strncmp(start_line, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0) &&
+	    (strncmp(end_line, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0)) {
 		scnprintf(buf, sizeof(buf), "[%s -> %s]",
 			  start_line, end_line);
 	} else {
diff --git a/tools/perf/util/map.c b/tools/perf/util/map.c
index a08ca276098e..95428511300d 100644
--- a/tools/perf/util/map.c
+++ b/tools/perf/util/map.c
@@ -431,7 +431,7 @@ int map__fprintf_srcline(struct map *map, u64 addr, const char *prefix,
 
 	if (map && map->dso) {
 		char *srcline = map__srcline(map, addr, NULL);
-		if (srcline != SRCLINE_UNKNOWN)
+		if (strncmp(srcline, SRCLINE_UNKNOWN, strlen(SRCLINE_UNKNOWN)) != 0)
 			ret = fprintf(fp, "%s%s", prefix, srcline);
 		free_srcline(srcline);
 	}
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200223193456.25291-1-nick.desaulniers%40gmail.com.
