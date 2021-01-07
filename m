Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUMC3L7QKGQECT7RUEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA582EC926
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 04:34:42 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id v15sf3175573otp.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 19:34:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609990481; cv=pass;
        d=google.com; s=arc-20160816;
        b=SVZlb5peBSKk8gq2u2kyGUQpYyRv/94VhTaz4bLS+eWB/R5qkr9j51MRKZC0KmNKrs
         dHsfCQpJIeXYWzYi8JJMl0mvWvcSLi/ctkb6CLcHKLH18p2c2HbPMuaDoVRWn7ThMJps
         fHMN662wVoemUfq+xHvWwiqE4djXLl/C02tS1FBrMAacef2bSrwpC71y7SW9449/oVzc
         dUfLHN0F2uOOPnjsKeKejivfEKgdbq9wWvf/oqmOZFeypMEJgv1LxcwNcENLn6uoeAQt
         lNSGHA8qXU++4wkh5qY1Z7hsZXp4t9CdvRT8dK0pSjwf58uXmbTMzhlSYo5rkAaY3yaJ
         d76g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=fZ8Uh8xUf2fyxUrFq6y+A1AySZQrL81Z7fX0nK+9LOc=;
        b=JlDBZPPLYqgkBJEUIS2n36AxYCWDxupysEbm8WTydeKoElpsbsquoybGnOCj2xAffU
         xfVsGIBikZ3HNEnEGctbCuo9l2FSe0YiKAMVXLZgmyBGXAg/JRZuuyBjYstNPcLBSzn8
         n1IeWbzhi7A/OCiAxqIKsAAJJ0m5Ce8ndoK024HZ8+PSiWyAi4I9kq8iAOIiiHD90jUe
         lsZj+U/z9fwwtTPg47c5uj93BiF5kQHWifVCM9IPvjeMLxHiyYqJevLJ85sc5z/iYKjs
         K2OPtEebEfUVgv4/qmKOefx/NPY0md7Q2zY1YuW80cRFBqo3382zyoS7iNwCjkeSIs0U
         zpIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OgrKWUCE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fZ8Uh8xUf2fyxUrFq6y+A1AySZQrL81Z7fX0nK+9LOc=;
        b=VYR0wpgw7AH9EdGhdg4hjXr0dirVTXQKVFAkA8IDF9l2A2cDga2FTj7kLQIbXGBXFO
         eOwin2TZY7yIVtVSS7Xmui/iUTUFYSk28BRqPVwbxY3hbSho4N8HVo4hXOqy8ARdC6pu
         CdsyBBFYlTiIUk0XE7uCbESyFNZQ0s4sA5Uylz7MkmIQlFlW0TchTpO3KYPuh7k5ZYE5
         +6EiFKo47zYRBY0enryBWdVQo90WjdMfFsQASMfylOqzflJNDkbMUjboqY5dnpGUvzW0
         pVygiBzqrHFR4E/Cvh32sC9gBrQEi5IA90cuIpGlBaKyr+zoTpPGiNgR0yoXT5Rn6qfU
         c1mA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fZ8Uh8xUf2fyxUrFq6y+A1AySZQrL81Z7fX0nK+9LOc=;
        b=K96Uuk86NVGypv5qrIN6ffvij1qaSyRJmUekLXK6vzPIbbEdY7+6IOdMFR+OvrMWXE
         Y9k6xobnZhv9IFziQo7wqZCS6bPPh/HXWz0cE/VnwgZPpLNPF3C21fJ3pzo7YtR01tLa
         AeCk+6XftIaBQe5UxQVDtKQi/xdz2DDDmdQZoNy9ZY9vLmzQ0uNIrbPZodQDb1lPpXEd
         /G2S4WTxIt80NpKh67gD8P98TA/xaofJKptHQUWgA/Q+QiZNJqGQEDcQyz6lKBTVpLgr
         pLFsiWDCLUTd0iF1FcNSwyqOdEy5qVfChUr1mr/YmdDyxCiRI/fBQL2IOI66YyUHVUbj
         IKOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fZ8Uh8xUf2fyxUrFq6y+A1AySZQrL81Z7fX0nK+9LOc=;
        b=kp+Yvez/KLjGjVgiiIP1m14iBJUk2cDIZFpJVmnNCeYfly9nLMbzDdpai6XtXfyKbl
         isa1HbbcLBPa5IwpXA4d0DnfLzK0eIYQyH4dqsAtiwIZrLgI/QIGB1BZn1kWJ7WiJMhI
         AwJzNhMBRttdTMeor2/T8BcgkIEgjjAMJn8afQHUToPOjkzlYp0La9iN+62/tYf/DfDf
         gPUxmYd1GdjQ4Dl+i+5mtpT5RiRSrq8Ynp++QuNC0J9/lhP5xbtU+0pHrZDCuZ/gQBOG
         jFFend3+/E+pyTMyvqj5j287c+66XcLjFYSA1fNWMoCR49VL57uV5u522SCzu2Pc0JLT
         C7gQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xg44lKIyckWyIR2yxt2lipNVtIK5ilHcwgbGpJGx2XIhdFZXh
	kHmp4VmlrD01zbPkdON6IO0=
X-Google-Smtp-Source: ABdhPJzmTVbPoR3GEkh+y/BJTFcBBkxJ81cyOEooC8vo4Ia0ODnTcZ5QTrM9cTP8FBswgnyyVfiFsQ==
X-Received: by 2002:a05:6830:84:: with SMTP id a4mr5435449oto.261.1609990481790;
        Wed, 06 Jan 2021 19:34:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2413:: with SMTP id n19ls1408653oic.7.gmail; Wed, 06 Jan
 2021 19:34:41 -0800 (PST)
X-Received: by 2002:aca:4813:: with SMTP id v19mr5251846oia.119.1609990481366;
        Wed, 06 Jan 2021 19:34:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609990481; cv=none;
        d=google.com; s=arc-20160816;
        b=z6zJ16ZPQAfucOS3gP5Uwp6Z4W8/yUclecbuTVg46sJHL1HJjQdLHjtkyGZdhSFe2F
         JRbnCg8dZCNvCAiA+b7pNQOg4uCoURZxOGOjqzeZbS3/L1EMdWQMzrQ91BjR0Ndj/lLc
         omk161gM5apZeuHE9vmTVQTeZ/h0oORyNLjWd/V55a/TldA3uMUM7rp/vLu7y5xdJUNf
         b/wQlX+5+XI10+nvfeIQPN1D8Sxy3mAid7xx686klTt4pg1Fr6Bv05q02Eet6gIo8fon
         7nF1iZ/fZk7csLszuGlME2HXR48D7bNXqAPuEi7+LFLk7tvX5yR3U68wsnMgko+3dgXt
         pbOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=djrXw5iqjaFHZpO+usSbcPQ48WqkacHGLQM3yEuz/cs=;
        b=AqOlmMcKBblRl0AalLDwPzKQbIVExouTeqEsVJ4fUro5PXN+CwKkoCzwubdxnhOW1a
         EyDzVBtuPi4mfzdm4Jycd0DP3H2cXWanJwDD07mspBN+ZlYyPNXg9Gacfx77vKzsznJo
         03vTbJu8QxuIB3Rh6A51DHO1pcJfhMuncjkKF+/yu0Twd+hEUuGHNCzdKXGni4oizKXh
         c0ESQBiH8OxMCQh33If/YpaX764IuXUViSlhNLYEdXbQX/31iCMyxAVCpzOpJyCalvFZ
         /aw5hie07dMTu+s8g84AyKvOctjPBf7qe8l7WCCW9GxnwYkxL1X0m2aiLzxNNib6V838
         sW6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OgrKWUCE;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com. [2607:f8b0:4864:20::230])
        by gmr-mx.google.com with ESMTPS id f7si392093otf.3.2021.01.06.19.34.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jan 2021 19:34:41 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) client-ip=2607:f8b0:4864:20::230;
Received: by mail-oi1-x230.google.com with SMTP id q25so5912544oij.10
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 19:34:41 -0800 (PST)
X-Received: by 2002:a54:448f:: with SMTP id v15mr173332oiv.106.1609990480929;
 Wed, 06 Jan 2021 19:34:40 -0800 (PST)
MIME-Version: 1.0
References: <20201230154749.746641-1-arnd@kernel.org> <CANpmjNNGmbgg_pFMC6X_6vZcj53jy7PsNyZAC88rOQC5zrOiFw@mail.gmail.com>
 <20210104223336.GA2562866@ubuntu-m3-large-x86> <CAK8P3a3J1HGia3cPy+ArFQGzQWj1gy8bx7DdjnRFE=1+JmsrKw@mail.gmail.com>
 <CAK8P3a01iSXxc+05sTtSWvxSYX=g4J1vK-nfnn5oNkR8FO_OTQ@mail.gmail.com>
 <20210106213853.GA3617315@ubuntu-m3-large-x86> <CAK8P3a3JHLKc=1V_6mgvQeS_oP+_Y=m_nhHzWSPrs2S+p7gvMg@mail.gmail.com>
In-Reply-To: <CAK8P3a3JHLKc=1V_6mgvQeS_oP+_Y=m_nhHzWSPrs2S+p7gvMg@mail.gmail.com>
From: Nathan Chancellor <natechancellor@gmail.com>
Date: Wed, 6 Jan 2021 20:34:30 -0700
Message-ID: <CAEVzpNnttP0EZq9M5cUCAfEeJcKNxkK-t3Bw8eyia2_wGV6vYQ@mail.gmail.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with clang
To: Arnd Bergmann <arnd@kernel.org>
Cc: Marco Elver <elver@google.com>, Kees Cook <keescook@chromium.org>, 
	Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	Andrew Morton <akpm@linux-foundation.org>, George Popescu <georgepope@android.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OgrKWUCE;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jan 06, 2021 at 11:06:39PM +0100, Arnd Bergmann wrote:
> On Wed, Jan 6, 2021 at 10:38 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> > On Wed, Jan 06, 2021 at 10:12:51AM +0100, Arnd Bergmann wrote:
> > > On Tue, Jan 5, 2021 at 10:25 AM Arnd Bergmann <arnd@kernel.org> wrote:
> > > >
> > > > On Mon, Jan 4, 2021 at 11:33 PM Nathan Chancellor
> > > > <natechancellor@gmail.com> wrote:
> > > > > On Wed, Dec 30, 2020 at 05:13:03PM +0100, Marco Elver wrote:
> > > > > > On Wed, 30 Dec 2020 at 16:47, Arnd Bergmann <arnd@kernel.org> wrote:
> > > > > > >
> > > > > > > From: Arnd Bergmann <arnd@arndb.de>
> > > > > > >
> > > > > > > Building ubsan kernels even for compile-testing introduced these
> > > > > > > warnings in my randconfig environment:
> > > > > > >
> > > > > > > crypto/blake2b_generic.c:98:13: error: stack frame size of 9636 bytes in function 'blake2b_compress' [-Werror,-Wframe-larger-than=]
> > > > > > > static void blake2b_compress(struct blake2b_state *S,
> > > > > > > crypto/sha512_generic.c:151:13: error: stack frame size of 1292 bytes in function 'sha512_generic_block_fn' [-Werror,-Wframe-larger-than=]
> > > > > > > static void sha512_generic_block_fn(struct sha512_state *sst, u8 const *src,
> > > > > > > lib/crypto/curve25519-fiat32.c:312:22: error: stack frame size of 2180 bytes in function 'fe_mul_impl' [-Werror,-Wframe-larger-than=]
> > > > > > > static noinline void fe_mul_impl(u32 out[10], const u32 in1[10], const u32 in2[10])
> > > > > > > lib/crypto/curve25519-fiat32.c:444:22: error: stack frame size of 1588 bytes in function 'fe_sqr_impl' [-Werror,-Wframe-larger-than=]
> > > > > > > static noinline void fe_sqr_impl(u32 out[10], const u32 in1[10])
> > > > > > >
> > > > > > > Further testing showed that this is caused by
> > > > > > > -fsanitize=unsigned-integer-overflow.
> > > > > > >
> > > > > > > The one in blake2b immediately overflows the 8KB stack area on 32-bit
> > > > > > > architectures, so better ensure this never happens by making this
> > > > > > > option gcc-only.
> > > > >
> > > > > This patch also fixes the failed BUILD_BUG issue in mm/mremap.c that you
> > > > > sent a patch for [1], along with a couple of other issues I see such as:
> > > >
> > > > I'm fairly sure I still saw that BUILD_BUG() even after I had applied this
> > > > patch, I would guess that one just depends on inlining decisions that
> > > > are influenced by all kinds of compiler options including
> > > > -fsanitize=unsigned-integer-overflow, so it becomes less likely.
> > > >
> > > > I'll revert my other patch in the randconfig tree to see if it comes back.
> > >
> > > The qcom/gpi.c failure still happens with this patch applied:
> > >
> > > In file included from /git/arm-soc/drivers/dma/qcom/gpi.c:8:
> > > In function 'field_multiplier',
> > >     inlined from 'gpi_update_reg' at
> > > /git/arm-soc/include/linux/bitfield.h:124:17:
> > > /git/arm-soc/include/linux/bitfield.h:119:3: error: call to
> > > '__bad_mask' declared with attribute error: bad bitfield mask
> > >   119 |   __bad_mask();
> > >       |   ^~~~~~~~~~~~
> > > In function 'field_multiplier',
> > >     inlined from 'gpi_update_reg' at
> > > /git/arm-soc/include/linux/bitfield.h:154:1:
> > > /git/arm-soc/include/linux/bitfield.h:119:3: error: call to
> > > '__bad_mask' declared with attribute error: bad bitfield mask
> > >   119 |   __bad_mask();
> > >       |   ^~~~~~~~~~~~
> > >
> > > See https://pastebin.com/8UH6x4A2 for the .config
> > >
> > >        Arnd
> >
> > That config does not build for me, am I holding it wrong?
> >
> > $ curl -LSso .config https://pastebin.com/raw/8UH6x4A2
>
> Sorry about that, you ran into a bug that I have applied a
> local fix for. You could enable CONFIG_EPOLL, or apply
> this patch:
>
> https://lore.kernel.org/linux-arm-kernel/20200429132349.1294904-1-arnd@arndb.de/
>
>       Arnd

I decided to just try to build the file directly. As it turns out,
ARCH=arm allyesconfig does not show any error in get_extent or
gpi_update_reg but ARCH=arm64 allyesconfig does. Looks like this is
because of the lack of CONFIG_ARCH_HAS_UBSAN_SANITIZE_ALL for ARCH=arm.

$ rg UBSAN out/{arm,arm64}/.config
out/arm64/.config
13853:CONFIG_ARCH_HAS_UBSAN_SANITIZE_ALL=y
13854:CONFIG_UBSAN=y
13855:CONFIG_CC_HAS_UBSAN_BOUNDS=y
13856:CONFIG_CC_HAS_UBSAN_ARRAY_BOUNDS=y
13857:CONFIG_UBSAN_BOUNDS=y
13858:CONFIG_UBSAN_ARRAY_BOUNDS=y
13859:CONFIG_UBSAN_SHIFT=y
13860:CONFIG_UBSAN_DIV_ZERO=y
13861:CONFIG_UBSAN_UNREACHABLE=y
13862:CONFIG_UBSAN_SIGNED_OVERFLOW=y
13863:CONFIG_UBSAN_UNSIGNED_OVERFLOW=y
13864:CONFIG_UBSAN_OBJECT_SIZE=y
13865:CONFIG_UBSAN_BOOL=y
13866:CONFIG_UBSAN_ENUM=y
13867:CONFIG_UBSAN_SANITIZE_ALL=y
13868:CONFIG_TEST_UBSAN=m

out/arm/.config
14133:CONFIG_UBSAN=y
14134:CONFIG_CC_HAS_UBSAN_BOUNDS=y
14135:CONFIG_CC_HAS_UBSAN_ARRAY_BOUNDS=y
14136:CONFIG_UBSAN_BOUNDS=y
14137:CONFIG_UBSAN_ARRAY_BOUNDS=y
14138:CONFIG_UBSAN_SHIFT=y
14139:CONFIG_UBSAN_DIV_ZERO=y
14140:CONFIG_UBSAN_UNREACHABLE=y
14141:CONFIG_UBSAN_SIGNED_OVERFLOW=y
14142:CONFIG_UBSAN_UNSIGNED_OVERFLOW=y
14143:CONFIG_UBSAN_OBJECT_SIZE=y
14144:CONFIG_UBSAN_BOOL=y
14145:CONFIG_UBSAN_ENUM=y
14146:CONFIG_TEST_UBSAN=m

$ llvm-nm -S out/arm64/drivers/dma/qcom/gpi.o |& rg __bad_mask
                                  U __bad_mask

$ llvm-nm -S out/arm/drivers/dma/qcom/gpi.o |& rg __bad_mask

Applying this diff causes __bad_mask to show up:

diff --git a/drivers/dma/qcom/Makefile b/drivers/dma/qcom/Makefile
index 50f1e7014693..c261adb47960 100644
--- a/drivers/dma/qcom/Makefile
+++ b/drivers/dma/qcom/Makefile
@@ -2,6 +2,7 @@
 obj-$(CONFIG_QCOM_ADM) += qcom_adm.o
 obj-$(CONFIG_QCOM_BAM_DMA) += bam_dma.o
 obj-$(CONFIG_QCOM_GPI_DMA) += gpi.o
+UBSAN_SANITIZE_gpi.o := y
 obj-$(CONFIG_QCOM_HIDMA_MGMT) += hdma_mgmt.o
 hdma_mgmt-objs  := hidma_mgmt.o hidma_mgmt_sys.o
 obj-$(CONFIG_QCOM_HIDMA) +=  hdma.o

$ make -skj"$(nproc)" ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- LLVM=1 \
       O=out/arm distclean allyesconfig drivers/dma/qcom/gpi.o

$ llvm-nm -S out/arm/drivers/dma/qcom/gpi.o |& rg __bad_mask
                  U __bad_mask

So I guess I am curious how you saw this pop up. Not to mention it seems
like that error is with GCC rather than clang?

For what it's worth, when I run that .config through olddefconfig,
CONFIG_ARCH_QCOM and CONFIG_QCOM_GPI_DMA get disabled... Am I doing
something wrong?

$ curl -LSso /tmp/out/arm/.config https://pastebin.com/raw/8UH6x4A2

$ rg "CONFIG_ARCH_QCOM|CONFIG_QCOM_GPI_DMA" /tmp/out/arm/.config
377:CONFIG_ARCH_QCOM=y
4437:CONFIG_QCOM_GPI_DMA=y

$ make.sh ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- LLVM=1
O=/tmp/out/arm olddefconfig
.config:364:warning: override: ARCH_DOVE changes choice state

$ rg "CONFIG_ARCH_QCOM|CONFIG_QCOM_GPI_DMA" /tmp/out/arm/.config

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEVzpNnttP0EZq9M5cUCAfEeJcKNxkK-t3Bw8eyia2_wGV6vYQ%40mail.gmail.com.
