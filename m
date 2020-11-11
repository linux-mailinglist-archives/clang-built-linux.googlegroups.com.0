Return-Path: <clang-built-linux+bncBDYJPJO25UGBB546VX6QKGQE25L5W5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E8B2AE67B
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 03:42:00 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id 23sf631133pfp.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 18:42:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605062519; cv=pass;
        d=google.com; s=arc-20160816;
        b=U2Boqom9G1LjidCRU3h/zEt853a0RQoWCrhXY6WnKLpr7KNLwGRv52HkJrRVPklQYW
         qPe7CkzTIKWX0BQU7P/GTQBMGlK5Tu8ETz6TMIvN3U7404Xy/MNE2b1VksFSav34kvm5
         xhoDzgn9mbT0QhU7aDHaMDUChz4hnYl818cAEq4h1y5CRHIXuRVIg9p0Fw2Zk8KVNPEM
         zLwJmeDSqAIS4zMPOjWMNkO7j+urAsNFQIRkVlOWZxaYG84o7H6+jPuL2553J8ABvm6A
         0sb9/wkUB1MLKjqWnqqBkB8MSY4741qECvL/n4h16No0JKMCSEPnm6oYG93aO2gb9qQ7
         xlQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=rN6IIx5Ja0hUr4mn68CgBy5oPL5DspsfShVMZXB28kQ=;
        b=bc8zNdY+QjCjEXtGbI2PqCE7/ylVadOVXdM6BR08LNmkBbi93luzrvrd8ts/SVvTsl
         3C5ic69Pyr25yhcwI3uBfrZt2B1TenrV7Yk0DthP/BaxFQFJFABNy3OaJUlE9ebvE2ag
         9l+2bEymWEG1M9ckLuEMfKpIJDcLUE1kl1VBz84mXX4/UcIwjlTKbn0bKUxhMltesMZS
         jTc8J+sbQjUSXgeiuX5S4ocDlyCUW+x40M0t350wwisV5xTUPouESSZGAg9ArfdNQThU
         DluFczui+MMIsKsJoNG0IDDO/U1j1p8ZTa39hnaGCma+XnUVtWCK5GycNWPYxlsygDCj
         tB6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YkAD55+o;
       spf=pass (google.com: domain of 3dk-rxwwkamuyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3dk-rXwwKAMUyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rN6IIx5Ja0hUr4mn68CgBy5oPL5DspsfShVMZXB28kQ=;
        b=Gj5181Dp/jgAuNMKpBed7PQ1qqNslRE8xOyZUBCy5JBIlQMK9Q0USFhF0qMEfUL0jk
         nnIinrkVr42HkgSIuL9Uwlrbr+3LEVkb+PkCSB5znu8ynEsaekucXnrIzu+5kOpZjCUx
         J0KXliuxYbAPxrNwmggg4DlovrvoZpaEO02RaZ4WyUB3qTzeNZW69jFFSzEG/h3X2CV7
         F7lcrHpLu1+DpV3DtH38MdSHhlqzg3RxYVpk8ZG5/IQktGTQx2agGlu70OH38Q5Uk2NH
         26EpwPoximV7MXu2HYjpBeEKwMqmcbWqgc1iMdDwtL9vTgkR+TRC4m+Drt4ZwN+l+p0g
         k5fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rN6IIx5Ja0hUr4mn68CgBy5oPL5DspsfShVMZXB28kQ=;
        b=pa7M3zJfyhNGbuDmvHLdz0wyHtTGYzJMx4AyBSzaaiDJPMPggQ7ZaVJFRyWQnGj1M8
         L0f04ctoq6Gd6wSWSXCjmG+Oppuo1B6pxL5y5pTidmfyg3XJqSKBKW0SB0lCs6SqYjOc
         dbUMh1Ctr8VJ/sLz3Q5TcOooyEPbCPrmE3kAhk/FJefd3OLznPvaIG5mgMx835OFt9Zf
         hv61dzRf0g9X4Qi/Esz2wrXivzMv8tkoziLIrtRvEruz3IBk2nDlSqga+mdW/2IsaI3k
         uy4mYTIwMaf6t0YT/IwA+4J3/eVhQCC6LaXj4ZNqtw5iDnOzqW75qE8j1jiDmYEHkuZa
         KBvg==
X-Gm-Message-State: AOAM531ikpup6ioML99LUhQIYrjTC6wR9GwF0FhIkddeB3Xnoj+i125v
	cJpGCi2Hv1k+/tjEV3v64fk=
X-Google-Smtp-Source: ABdhPJxr5KtvE3D46ETmxevJ+elLozBe9x2GDfahoOF8eK97JVswBkhc+0bgr+4f5rwVQ4uC62pPEA==
X-Received: by 2002:a63:181b:: with SMTP id y27mr19493280pgl.408.1605062519610;
        Tue, 10 Nov 2020 18:41:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5a46:: with SMTP id z6ls4878261pgs.7.gmail; Tue, 10 Nov
 2020 18:41:59 -0800 (PST)
X-Received: by 2002:a65:6805:: with SMTP id l5mr18236792pgt.113.1605062519082;
        Tue, 10 Nov 2020 18:41:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605062519; cv=none;
        d=google.com; s=arc-20160816;
        b=rRB3eHdWrkKSvt2HwVSF8EyhGdhuse9nEPc4Skw/CMl8WNWb15hF3rKnrBzsPGQc1n
         g3WSPp/H3TP134tEFiFjcDRHTVTspo0bdVRFODUCA5zwTSHFMJH+tjZMrfWHhMx1YdAQ
         Ein6EbasrhodyVLEPffOg9E2TGmRhS4KZlcn/U1s7mZXf8V0StP/TBEMf0dBueLPcqIo
         zC4jXm7C1Dc49OEsgpLpc+KZybx5geHCp1ul8XnWhXMAz8K0J1PlkmcuDnEqnkzbYeQI
         HuXxUELi5+l7LNPodWQE1F3RW+Hw6u/gYHv/vNw/j8nlMwqE/o2S8G9ObDOSCyUrkspa
         EaJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=OUUVYD1R785BEy2RCsP0C8sEZy7udFaGjiORPSK5eA4=;
        b=JV/4fW5jFMxNF2Pj1q3hVfvdgwSJa+8vWDMXPXfbHsl1DkJNBY9SK+H1NRCJnC48dQ
         0t+pwARjLdR6MNDDKSR9j+Shj4NrDqRtdFSiWxhoooNfCYJnOTF2w0yE4mmT+s+xyJSN
         dKLwPhs6F7LfRB3qjCHSO56f2lwZgNaKPWaeURkt5lq5K7gw9o5sscOhYgDEDyJe6yJZ
         T2I/BbSVXiq4sm+vPfDvI5cdlqAfnnNPtQMoldKWgHME4wPK9iJ3ZCbHH+KrkQjQEFME
         PQrGWeb33/dlSC0jBwKfnF0U1gMGjCq0KTQBKLnX7EPkbtWKapG56bGxtRL1GlGkpXC+
         l9SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YkAD55+o;
       spf=pass (google.com: domain of 3dk-rxwwkamuyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3dk-rXwwKAMUyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id h17si45408pjv.3.2020.11.10.18.41.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2020 18:41:59 -0800 (PST)
Received-SPF: pass (google.com: domain of 3dk-rxwwkamuyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id j10so840687ybl.19
        for <clang-built-linux@googlegroups.com>; Tue, 10 Nov 2020 18:41:59 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:b445:: with SMTP id
 c5mr29391620ybg.355.1605062518302; Tue, 10 Nov 2020 18:41:58 -0800 (PST)
Date: Tue, 10 Nov 2020 18:41:40 -0800
Message-Id: <20201111024140.1483879-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH] Revert "dm cache: fix arm link errors with inline"
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Alasdair Kergon <agk@redhat.com>, Mike Snitzer <snitzer@redhat.com>
Cc: Rob Herring <robherring2@gmail.com>, Mikulas Patocka <mpatocka@redhat.com>, 
	clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, dm-devel@redhat.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YkAD55+o;       spf=pass
 (google.com: domain of 3dk-rxwwkamuyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3dk-rXwwKAMUyop3l5wytp23rzzrwp.nzx@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

This reverts commit 43aeaa29573924df76f44eda2bbd94ca36e407b5.

Since
commit 0bddd227f3dc ("Documentation: update for gcc 4.9 requirement")
the minimum supported version of GCC is gcc-4.9. It's now safe to remove
this code.

Link: https://github.com/ClangBuiltLinux/linux/issues/427
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 drivers/md/dm-cache-target.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/md/dm-cache-target.c b/drivers/md/dm-cache-target.c
index 9644424591da..4bc453f5bbaa 100644
--- a/drivers/md/dm-cache-target.c
+++ b/drivers/md/dm-cache-target.c
@@ -712,10 +712,6 @@ static bool block_size_is_power_of_two(struct cache *cache)
 	return cache->sectors_per_block_shift >= 0;
 }
 
-/* gcc on ARM generates spurious references to __udivdi3 and __umoddi3 */
-#if defined(CONFIG_ARM) && __GNUC__ == 4 && __GNUC_MINOR__ <= 6
-__always_inline
-#endif
 static dm_block_t block_div(dm_block_t b, uint32_t n)
 {
 	do_div(b, n);
-- 
2.29.2.222.g5d2a92d10f8-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201111024140.1483879-1-ndesaulniers%40google.com.
