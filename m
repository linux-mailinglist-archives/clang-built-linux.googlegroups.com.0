Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGWTS36QKGQEB6VB6DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A85E2A9E4B
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 20:53:00 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id v6sf1505193plo.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 11:53:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604692378; cv=pass;
        d=google.com; s=arc-20160816;
        b=sozyBRgfLttwjBv0tufrZv5oWcS+S5NWxYsr7RJ8SotLcRPhARQo5+AYiewot65jhY
         4Gfdy5ffVdT6JPt4e9t2qcf2UV6UbHzic+Lnz5hzDLR2qMY8fRGpUZDCnExF6x1Y+3jN
         CX2Xa/+qdioTxF86aDe7ipeSp3C/5qzb/T6bUWoxfmu3c7M/44liYp9XQKrqYXRshH0F
         2S0c2nlnT64gXwzAF7bv7tRd/4c5k+AWwYbDC35goZE8EKb7cJt6QDMMurmBx3c7hu93
         BbWGdwTquF7swwgs3fqKszhLO0VHD/S2oISPSbd6s2nooszzvaLpVC6mRnC3sV7PGgWg
         +QSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nRBo9K8+O4AC/JT/LGIS1d8VrTIWhIFQ0/B4MhWutn4=;
        b=C2IqaEEN4TGWIfXZy1aqbnjQRaD074QKykfZFEpTyq/IoTDflIHYp1JkwIv7qHhFOQ
         oXglNeXII7Pjy4flVYlelZu4J/Lqx0LxQ5aVpMXi20lJ6CPYcDQ7Z+hLZnYDHwta6wdQ
         vKbUHTMBewYiIG2jefeFNcPtPAmv57GGvL+8YhFN1M9LavHivsdLMLcqYF117xN/01lu
         54EbHRC0/PlSbSPZdi5z2dyqvjkLttTnsrZW3aMtWTudVoRXwLKs9XVkJZXSRF5+W7yL
         hsvujf6c26QRadxAvP+rIQqVRdrCa8bP6xskPm5LZvsS2eTfp6rAFITThAHrvxuuIvPw
         zfcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fqg1gT6A;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nRBo9K8+O4AC/JT/LGIS1d8VrTIWhIFQ0/B4MhWutn4=;
        b=fKiJ01o4VtRXQ/ed4lqgbWKdHH54iP7vZjNhmG6FS6pENU/unH1T29wHZPJSjBjcKH
         apzOGhJ0Otl7CrKqmADXkgo1F0X9m32x7RbT4kU1ZLwVFveAPUkgKerDG8FqBzqHa4q4
         UMHrNIUdDGoGqvgIR0tOnibAZpXMbFIOQDTlkBSVWwd1OGJSunpbNKA3bHT+fq4gHj8H
         BA6MAFrgeXMuLGWiQ1pac4Asivx8s+Rz5Psa614g0z1fkqj3wTFihtmy9KqhdC4OK5ub
         iFKjb3fUxlO5+spbadrN4dGQwHJeqB5xYz5DoObRsbalKWaCuPSze48VH5jLAyEeG0Bx
         Dj+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nRBo9K8+O4AC/JT/LGIS1d8VrTIWhIFQ0/B4MhWutn4=;
        b=gU18gRht1DgVzSo83de0CLGkCCaIEl79bW80nTHDl1CLzG32+Lue01Hbytx7XlrHXT
         2EhC8UkWtKGf6b0ch1bQim97BW//DJaH2vV5TyI/JzG3VO4YPQl4YLUJM8YbwIT32Ff/
         t/DOeS+YQpmIJZ8DCwR5g7pRarO/NAsHq8Q3/ZyLUhpY7OBB38Ln2WVO+3XUIWYlmq82
         ynaj5TDtzITSRyv7bv2VXnGsv5LHDC+WjBXIBwqcNFnlOd9A8NP7rFogHIf1qRMPNhDI
         i0QKnnkzncsGHQTF1AB2/K/wRHHype1BZzYITftx6s4sKzCvj+7AouN2g+EMR8Rtm9G1
         zOUw==
X-Gm-Message-State: AOAM530pu1LA2L083CPZnw35JhE8JW9Mv+7Yb3GYBoGQ6M+TgqZ1+gzG
	KyLYapJmNm3S0ak27fUPd4k=
X-Google-Smtp-Source: ABdhPJxDu8NA/JGq2A4+/VDlKxnSvmSFJYsBdSEmzvLG+wqv5mN52nQcg248JvYjgW+ej33BKJy0cA==
X-Received: by 2002:a63:4f26:: with SMTP id d38mr3107465pgb.220.1604692378517;
        Fri, 06 Nov 2020 11:52:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7745:: with SMTP id s66ls929050pfc.0.gmail; Fri, 06 Nov
 2020 11:52:58 -0800 (PST)
X-Received: by 2002:a62:f20d:0:b029:18b:39c3:38d5 with SMTP id m13-20020a62f20d0000b029018b39c338d5mr3413171pfh.70.1604692377895;
        Fri, 06 Nov 2020 11:52:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604692377; cv=none;
        d=google.com; s=arc-20160816;
        b=ZQFZUKVXH3UzXGQ5kS2UlzEk5kfwMjz5568x+J/sJLHa6ANBIwZ/8aPNLs9m4K2/tO
         Na2/2yTSYN46ETXIOkbSZ8YTqArAnfEXGai28S9Coh/EBD/iUI1uHwf/uqJkDvMCVG9a
         /d19BCQ/TefGf1pZBNp6sIkDS5ay2LCM20Hc6tQU7zACNnjPfdF1C5gaNMiXXwxvGtP4
         M3yY8IvvNhF15+79C1rqXiN/TYGVa0Ho4uqqHCqIh6HJ9ky+gkXFooKuHQeKIHfrpCwk
         THbroCS50RkVwxKpV3HGLfxKXYjBTcFPmer84O+uyFBDrEuNMWLpVGNumPly59z0M1M2
         9RDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kt96Jr0Z4cVutyykEDDLdrrSlVc/2nRg/Ta01oSTLh8=;
        b=xnbbVKozH7P/8Wd9S+EG9mBr77D8FF/dRt2kqBSXcKqlVZyCgVXvl7ZJLM7iABsr8W
         /eb7/4SLTTS/wdDSACSJdxh/SQkz2uozRaO2b2wwu2s7kVFy3FZHbgjqonm/AilPmrWa
         VASep9bRk3V4udE2nVS2xh+4+1Auwdpem5SiAZDuNSfJCYpt/TBFjfAoWdFVD/qVc+ku
         xiBsmkKyyZgnRbYdZvkvFaTvhzSdi3FlsKTosDLPzf0FnljzHcNWpvNWQB81R8QtoxHw
         bgfcWNxmK/+aBlQipyUMYoGTwF+TdO/n3ajKfD1ioqsIaxhyqYm9gPMX+DoJH9xgweAa
         J1WQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fqg1gT6A;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id t126si144938pgc.0.2020.11.06.11.52.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 11:52:57 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id z24so1776397pgk.3
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 11:52:57 -0800 (PST)
X-Received: by 2002:a17:90a:6b04:: with SMTP id v4mr1206965pjj.101.1604692377390;
 Fri, 06 Nov 2020 11:52:57 -0800 (PST)
MIME-Version: 1.0
References: <20201106051436.2384842-1-adrian.ratiu@collabora.com>
 <20201106051436.2384842-3-adrian.ratiu@collabora.com> <20201106101419.GB3811063@ubuntu-m3-large-x86>
 <87wnyyvh56.fsf@collabora.com>
In-Reply-To: <87wnyyvh56.fsf@collabora.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Nov 2020 11:52:46 -0800
Message-ID: <CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm: lib: xor-neon: disable clang vectorization
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Russell King <linux@armlinux.org.uk>, 
	LKML <linux-kernel@vger.kernel.org>, Collabora Kernel ML <kernel@collabora.com>, 
	Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fqg1gT6A;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Fri, Nov 6, 2020 at 3:50 AM Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> Hi Nathan,
>
> On Fri, 06 Nov 2020, Nathan Chancellor <natechancellor@gmail.com>
> wrote:
> > + Ard, who wrote this code.
> >
> > On Fri, Nov 06, 2020 at 07:14:36AM +0200, Adrian Ratiu wrote:
> >> Due to a Clang bug [1] neon autoloop vectorization does not
> >> happen or happens badly with no gains and considering previous
> >> GCC experiences which generated unoptimized code which was
> >> worse than the default asm implementation, it is safer to
> >> default clang builds to the known good generic implementation.
> >> The kernel currently supports a minimum Clang version of
> >> v10.0.1, see commit 1f7a44f63e6c ("compiler-clang: add build
> >> check for clang 10.0.1").   When the bug gets eventually fixed,
> >> this commit could be reverted or, if the minimum clang version
> >> bump takes a long time, a warning could be added for users to
> >> upgrade their compilers like was done for GCC.   [1]
> >> https://bugs.llvm.org/show_bug.cgi?id=40976  Signed-off-by:
> >> Adrian Ratiu <adrian.ratiu@collabora.com>
> >
> > Thank you for the patch! We are also tracking this here:
> >
> > https://github.com/ClangBuiltLinux/linux/issues/496
> >
> > It was on my TODO to revist getting the warning eliminated,
> > which likely would have involved a patch like this as well.
> >
> > I am curious if it is worth revisting or dusting off Arnd's
> > patch in the LLVM bug tracker first. I have not tried it
> > personally. If that is not a worthwhile option, I am fine with
> > this for now. It would be nice to try and get a fix pinned down
> > on the LLVM side at some point but alas, finite amount of
> > resources and people :(
>
> I tested Arnd's kernel patch from the LLVM bugtracker [1], but
> with the Clang v10.0.1 I still get warnings like the following
> even though the __restrict workaround seems to affect the
> generated instructions:
>
> ./include/asm-generic/xor.h:15:2: remark: the cost-model indicates
> that interleaving is not beneficial [-Rpass-missed=loop-vectorize]
> ./include/asm-generic/xor.h:11:1: remark: List vectorization was
> possible but not beneficial with cost 0 >= 0
> [-Rpass-missed=slp-vectorizer] xor_8regs_2(unsigned long bytes,
> unsigned long *__restrict p1, unsigned long *__restrict p2)

If it's just a matter of overruling the cost model
#pragma clang loop vectorize(enable)

will do the trick.

Indeed,
```
diff --git a/include/asm-generic/xor.h b/include/asm-generic/xor.h
index b62a2a56a4d4..8796955498b7 100644
--- a/include/asm-generic/xor.h
+++ b/include/asm-generic/xor.h
@@ -12,6 +12,7 @@ xor_8regs_2(unsigned long bytes, unsigned long *p1,
unsigned long *p2)
 {
        long lines = bytes / (sizeof (long)) / 8;

+#pragma clang loop vectorize(enable)
        do {
                p1[0] ^= p2[0];
                p1[1] ^= p2[1];
@@ -32,6 +33,7 @@ xor_8regs_3(unsigned long bytes, unsigned long *p1,
unsigned long *p2,
 {
        long lines = bytes / (sizeof (long)) / 8;

+#pragma clang loop vectorize(enable)
        do {
                p1[0] ^= p2[0] ^ p3[0];
                p1[1] ^= p2[1] ^ p3[1];
@@ -53,6 +55,7 @@ xor_8regs_4(unsigned long bytes, unsigned long *p1,
unsigned long *p2,
 {
        long lines = bytes / (sizeof (long)) / 8;

+#pragma clang loop vectorize(enable)
        do {
                p1[0] ^= p2[0] ^ p3[0] ^ p4[0];
                p1[1] ^= p2[1] ^ p3[1] ^ p4[1];
@@ -75,6 +78,7 @@ xor_8regs_5(unsigned long bytes, unsigned long *p1,
unsigned long *p2,
 {
        long lines = bytes / (sizeof (long)) / 8;

+#pragma clang loop vectorize(enable)
        do {
                p1[0] ^= p2[0] ^ p3[0] ^ p4[0] ^ p5[0];
                p1[1] ^= p2[1] ^ p3[1] ^ p4[1] ^ p5[1];
```
seems to generate the vectorized code.

Why don't we find a way to make those pragma's more toolchain
portable, rather than open coding them like I have above rather than
this series?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkodob0M0r_AK_4nG3atLGMyNENMd6qVAHSPa92Zh7UZA%40mail.gmail.com.
