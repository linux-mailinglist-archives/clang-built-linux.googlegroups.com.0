Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBF5O7KAQMGQEUPZFN4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A10432AA92
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 20:50:48 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id v5sf16910217ioq.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 11:50:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614714647; cv=pass;
        d=google.com; s=arc-20160816;
        b=kIq8wBCkiMB2UVJLjB/x6sbqlqTDK2BWtoMtCZY0Td0iu8jI/IJoO7vfDTFYfOZ0ZE
         UjecmSjW6fPr0C4a1SLSPESG6gl9cUyY7M9bhoV+JkS1/sQ20PcBGmlgXZRW0LAyann9
         H5RApFFBMaum3KpRJW8nDF9D30aIKO3drIGr9SS1cDaZsyr2fZy3lCDucG8C5hmyuCor
         wmNfTUS17b4yI2VPSH+uZZMJr7vZ0k2un8RgmcZf7Uh0+hh9cxzIdTCJmyWHmBS/sHWV
         fVLuLXoi1SUqAip1E5/QUcsVDaOqRoJC/voJBSJo2zvqTgyrWbxEehhSJMVd7XZZoJ5P
         UObw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=UCpmOtR3z2VUEhOKDq699uR8Jn/fl4AdHqn9i1o0+FM=;
        b=fG/yhLHTEu89sZy7YTqPMDsiZioWtDGcwy4v8ZiqIna/f9myWXwEWg0R2UvU/8osPp
         GnVo1cBXJzgMiYan8od4tFHUe0o8kv2I+VZccz0mJ3fgTVbht/d3iJJ8vyn3kSZ5cPy7
         UAQX+xrImhzozPMkIiRM/KchlSAuDhrr/MhTI8ctK1uKmfmoZ3O7ogxOb/3dzk8QFxLx
         lsqe3ctEbF29ZzQHaU3ntTvW89yheAPBNiigf8MKpX2hyZQhMYaN1oZ1oCa3PQdIc9ag
         XVDAa1IZtzvob/OAarzc4/Go8MdNfspAlznEmL4JiM7/h51FqIoKbu6WwB/vBebbG8ok
         qdiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=d6eV35ZP;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UCpmOtR3z2VUEhOKDq699uR8Jn/fl4AdHqn9i1o0+FM=;
        b=PP+3PpYG4WU8UtVKdBPVx1ZIf/37drlHi8PWMue+nymv68JukN4ykS1zsrzdUUp7iN
         C3CUhjr22YvjIekEghOfQI5vTcc1tp7wP7ZOhe/cETxHlpaNqVGV6FiRrFV9EeDXsM2B
         hkx974kHlJEPRIhikGavfA6tRNkkhlrVNp1vaAdrJd3MzF0bvZbKK3q16a0XQfbCYwBb
         p3dFuX+TmCeLkWZ1CQwjKC6uTbHJAaNl1UD8O+eWL5LnnGVfmowwvS+gXAGityjKqTAQ
         AYEoNp63EepvJsUDIpLUqV6WFp3tRerNaeuNrLs0g82aLxnOvUSshgj+E6QlFWw9Ygzw
         0NYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UCpmOtR3z2VUEhOKDq699uR8Jn/fl4AdHqn9i1o0+FM=;
        b=EC6M47G9e65w9kbX2ytzpfL+bZJ3ak/tsg+wKzAmYXPg4xl/EXST6Pw8BkZzOqLPPw
         mbGLOsWBwiivzJm8chgEXvjOFwH4AXWvnyX0oa7+HhCKHBcgsVxYE8IpBo2WpjfdzkiQ
         97JMkiwvfHE6JyRRn2RUecwdAzpc/S4qbv7gMUk7XHjYYnCYW6ETAOrYrjWRXzUNzm0j
         GcoN/ZxcYroRzYRRwJtnkCN1bZ7g/1xwOW38lDJHLPEufSbrrnJ7fpGk4INFADObk4TH
         9CUtoOFNRcPaJLvJeuQYfpHOiGelaB90nveK7j4y9obHxT/l2/6PSH0KXqtqGDVCbHve
         GMcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316CpBse6S9k/nJgwWmJzFFYfwCJPB95HyyGkqGVnwUh2bp1v8w
	jFZXsWLLB53fK18FO5ySQfg=
X-Google-Smtp-Source: ABdhPJyhOeTguOz4gBvMDnfwSqit6ADjiKiP6wAyIekAFREv1bl0Zvh1Btb8Hp7IcLDXa0/AAzPXVg==
X-Received: by 2002:a5e:c908:: with SMTP id z8mr18893269iol.136.1614714647196;
        Tue, 02 Mar 2021 11:50:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3606:: with SMTP id d6ls5139362ila.3.gmail; Tue, 02 Mar
 2021 11:50:46 -0800 (PST)
X-Received: by 2002:a05:6e02:13a6:: with SMTP id h6mr19781265ilo.10.1614714646912;
        Tue, 02 Mar 2021 11:50:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614714646; cv=none;
        d=google.com; s=arc-20160816;
        b=uOB0mTnrMLYCyzAUaN95gudU0PmHE2cKHJdWIvlaA8gujyqBGyxPUoLD0vNA+Zd8b4
         0r62bcmouRYy+NiNqqTykf885BfGZNamJWMRM2Hn9c+atM2iQjIfPlCJMxVTx4Jmp7F4
         9nqN49B1C3EWr+jMo8QDQuIQeFnyDnXokXV9ZDxVEdozmTwkq3PenSvljByC6pGF7GpO
         flNnxwSLMWwRiTAu+NOfXiXK6O3/O08WLOp6ai0ituSdWdfOjY1QRTZ1/dDnexkOb5Cl
         OaEdmRl5A8+XgUMT4PSErJrIlm1AJZw/bANt9QKgzKbsa6orZPikktWws/ISACZQQv1H
         YnDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=yemZTMZOgwGgCE8ehe5/yyjVrQx2zvq4Q4AHsTkeatA=;
        b=Vb+kKbN2lxwUiRKDtJ/E79mbgAuhgpMdw/NzO4veKQ8XSXL9ufQ+pTxMagFTwetPp3
         zX7gxOW7NIS7cNMXKLaRz0n8j6sW+l11ebEP9HfOJt94/61yDIRx01FgUH01UfnpSeFA
         T7WLTPTZgLUh8VQ03dsDHyckvnXR9QvU/suj42n85I1FK1G3fIGJIdkMUMYc7FwRNj8O
         iR5dIIG+9RJfBitcSBu7SLg/kyXxwoEKB35+w96tE6YwwkNgET+TF363AB7D3vC1e2kl
         HoKmKsM3ZTA7+4GlQFom8fPAqomKzSuzxwXP3YT9BGUG1/exuSFglXWGB4s3ojzhtNoe
         P9MQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=d6eV35ZP;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r2si1039112ilb.3.2021.03.02.11.50.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Mar 2021 11:50:46 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8A6CC60201;
	Tue,  2 Mar 2021 19:50:44 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] powerpc/fadump: Mark fadump_calculate_reserve_size as __init
Date: Tue,  2 Mar 2021 12:50:14 -0700
Message-Id: <20210302195013.2626335-1-nathan@kernel.org>
X-Mailer: git-send-email 2.31.0.rc0.75.gec125d1bc1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=d6eV35ZP;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

If fadump_calculate_reserve_size() is not inlined, there is a modpost
warning:

WARNING: modpost: vmlinux.o(.text+0x5196c): Section mismatch in
reference from the function fadump_calculate_reserve_size() to the
function .init.text:parse_crashkernel()
The function fadump_calculate_reserve_size() references
the function __init parse_crashkernel().
This is often because fadump_calculate_reserve_size lacks a __init
annotation or the annotation of parse_crashkernel is wrong.

fadump_calculate_reserve_size() calls parse_crashkernel(), which is
marked as __init and fadump_calculate_reserve_size() is called from
within fadump_reserve_mem(), which is also marked as __init.

Mark fadump_calculate_reserve_size() as __init to fix the section
mismatch. Additionally, remove the inline keyword as it is not necessary
to inline this function; the compiler is still free to do so if it feels
it is worthwhile since commit 889b3c1245de ("compiler: remove
CONFIG_OPTIMIZE_INLINING entirely").

Fixes: 11550dc0a00b ("powerpc/fadump: reuse crashkernel parameter for fadump memory reservation")
Link: https://github.com/ClangBuiltLinux/linux/issues/1300
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---

Send while streaming at https://www.twitch.tv/nathanchance :P

 arch/powerpc/kernel/fadump.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/kernel/fadump.c b/arch/powerpc/kernel/fadump.c
index 8482739d42f3..eddf362caedc 100644
--- a/arch/powerpc/kernel/fadump.c
+++ b/arch/powerpc/kernel/fadump.c
@@ -292,7 +292,7 @@ static void fadump_show_config(void)
  * that is required for a kernel to boot successfully.
  *
  */
-static inline u64 fadump_calculate_reserve_size(void)
+static __init u64 fadump_calculate_reserve_size(void)
 {
 	u64 base, size, bootmem_min;
 	int ret;

base-commit: 5c88a17e15795226b56d83f579cbb9b7a4864f79
-- 
2.31.0.rc0.75.gec125d1bc1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210302195013.2626335-1-nathan%40kernel.org.
