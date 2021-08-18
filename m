Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBW5562EAMGQECE444MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFC03F0EE1
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 01:59:24 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id l85-20020a252558000000b0059537cd6acesf4700212ybl.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 16:59:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629331164; cv=pass;
        d=google.com; s=arc-20160816;
        b=WplKtRdvSgqxMRm4VJrjGu/PMzdhYZ0FbsDg6l+ufu6nRQDdjfaJ5N4YTyQp4AInz1
         YKYHz8XrDaZhdJWvIOxTpPncfkObuBQAP80f1rfWl0Vw1SOQGgOjwhzNGo3dY7Pd5EVp
         NiUlAGud4PLBXgxNRVSjkGCfrpWkX1RqgzNnzZC+q+TstQp64I8SlbMpyW+UOHD3pACe
         lSWRTcY1NW6Psu1/bcTEAjJ609nglZE0ejhIa5r/T6gdLIP+QWE/otdrv6J9VGRofj4Q
         U0198ubwsAnmQWZbCkRLyoQcaPLbqYKtfA9b2jbvo93eS0LosmmREd1epDf6NZ4LXzNX
         U+nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=kHR2kcA75s96ls8g8XRL/852AkK3TZfhA7mKh5FFMCA=;
        b=j6fUUSDu3GIAvBrSpe18PMdxMm8qA4ocfCqJSQKZWF0v6DrUMuBh06gUHZe/WCf1Zo
         0lqwiHJOilyU3ZyAmoOxWAryDH+9giqk2gIvD2Q1l6nSsBQ/EFOvaF85t3G0zBgrbTzJ
         28TtmcRNqcFrRYDypzbyW1lwHlwe6I7xBRDPS0d2mhr8NA28DmMHe3WAc2ZGSP1itlrc
         uEDKuBTTNt7d3KxdODaLFJk3UcBkdUW3Rhc0nXJFFQLrINtKgrqDyWT2Nyn+7Tg3P4Qe
         pPS1ARrfxCmlZp3ilh8efe/QvzamS/zP32RPpxIJjHo1CRT8Kuh7Tm+zpdjSDgGlDwVH
         udhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="ll0X1F/1";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kHR2kcA75s96ls8g8XRL/852AkK3TZfhA7mKh5FFMCA=;
        b=VGamom4nbIVQpdlhWWntRszFIMf4EAyc6JCWIabYoUTMs9E+jMXiaXYHXy6ifJez9C
         S0Vbq6rb90GQVe9rOR+GZyVC17ddnOfxfg9SLUT2WCmbiRebad0Kdh6ikOyMOxkV5kOy
         yF0txdpajqQ1G0nhePN7qdrNsmk197nQjLMARj0BH7pnUs+52/ld2FQH3XScJ/bn2M4l
         9vu9v0lf0FgaXq612r99Aj6hw6AOUvCm+DTDdU4+hEieDgm7xk5jdgYEe/r4BS12/Enx
         XUxqKWxXCaq/8AuH6CrPNNYNzzaOj5TNxjP2RxLWzyG6NJGU+L2LENKlnZo1N2M4ntr/
         XXkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kHR2kcA75s96ls8g8XRL/852AkK3TZfhA7mKh5FFMCA=;
        b=R+ezxQyCngQLYL1PIc44KUYl1l+29A8pCwwVT5dfRTAocctDNxPGjW560W+GSFsTrm
         5L+EXZuP4mqFUpj9chQEImsmFbeSdsSqb2PfMVRmJGn7jC1lgKiHmxdxG/CFFzDFX7w/
         N/Ofoz3FHl+zsinuwtTJI302Y4r0mAZI+YheTFLy09lHBOGJFAjnE595cyRWLSH5w2qP
         hcTyW2zssYaFsulGnTyNqD6VKqCvDk6ZhUjHB66nhqSRyeig9nufOtA3UMCexiVnDCYV
         mqAs1LbSLIpC+G6UhjTdwIJHI2yR2rlNVfbSyt+8rdwmBB7J7vmnsyaGPZNXpwCVuv6W
         jdHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DvpNbPPZ/rOVGGgpRw8Hlqolk5gXNN99B3OfMgV888/Kw8ZYD
	0Ul3gaVJXmXiRm+t9ygLuCI=
X-Google-Smtp-Source: ABdhPJwV2LKQDNKKgEP3ruiHm/4PyhL4I7EdTYMXm2omMZP+kynNgOPd9KOdaPkm+ntcPv8pHaNY4A==
X-Received: by 2002:a25:a149:: with SMTP id z67mr14875801ybh.301.1629331163918;
        Wed, 18 Aug 2021 16:59:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:9808:: with SMTP id a8ls838589ybo.11.gmail; Wed, 18 Aug
 2021 16:59:23 -0700 (PDT)
X-Received: by 2002:a25:4006:: with SMTP id n6mr15057627yba.472.1629331163417;
        Wed, 18 Aug 2021 16:59:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629331163; cv=none;
        d=google.com; s=arc-20160816;
        b=N+7JTATJrrRBp5wVvGc5o1EPXkTXxg15+kSNiAyynSK5D/FkQg9pVuJmdEdB7SBJhr
         lk3u3YmRk3VDPQG9zw9J9z+KBIkmkPe03Xxq50H6N5D0BNphxLUuCE3er6UdoMdZaoo/
         Uw4FSQ6oAB+6hDpieDWSh+JMNfIXBOo6iXUt5bG7vfTYVZFVwAu4gPuCNsbQtLE23Y7n
         WlL93ftmu0kZa2iDfQv2BLJBHyhBggN6Xtt2N5/+FHEZIVXLsqJfAxadN70huEf/mho6
         i4wLQ+Ts2UfUr8KSBdEV1fEfJ44h0iKeKGQcgtPiNwiOvbuGSq98gki1frWM3oZcAN/p
         7xaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=ihRSUosZ1n/QH58LU5drX97jQNk+oYE3vHV9UEG8bhY=;
        b=d1uMBaMRbbmA1cjSwcdLJ7mEpWurngwN+xUC8yQfPzMdXgHHwKw3YUgDyBFhQLhvWJ
         5lSTYINrUNYOcBdJCx8hd9ZIBYKRt4ZSoiVYYf9PUjVm8w3WJlVuEKXJh3vpR2YV0DLH
         E2paFC+u/N/CUVRdvFb/q/KUsZOn54T9tVdHBQg4HRpriy5TqTKvnwv7Gipefr0UDu0i
         Nu/6mSZGsH10Y6jwauXdk/BmUJOHDkvdkADoikcINtX4yCRBxCBQujRS2TlxW0hbgrbS
         x47kgjvWhtdAGXM/zX7jmK0ESDvrD2wIiSpqngFxdihpZJkLfXZGEYwGpcxZ1j6HtUlO
         XkJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="ll0X1F/1";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id z205si167867ybb.0.2021.08.18.16.59.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 16:59:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id nt11so3771666pjb.2
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 16:59:23 -0700 (PDT)
X-Received: by 2002:a17:90a:c006:: with SMTP id p6mr11982780pjt.144.1629331163071;
        Wed, 18 Aug 2021 16:59:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id q4sm834430pjd.52.2021.08.18.16.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 16:59:22 -0700 (PDT)
Date: Wed, 18 Aug 2021 16:59:21 -0700
From: Kees Cook <keescook@chromium.org>
To: "Lazar, Lijo" <lijo.lazar@amd.com>
Cc: linux-kernel@vger.kernel.org,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	"Pan, Xinhui" <Xinhui.Pan@amd.com>, David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Hawking Zhang <Hawking.Zhang@amd.com>,
	Feifei Xu <Feifei.Xu@amd.com>, Likun Gao <Likun.Gao@amd.com>,
	Jiawei Gu <Jiawei.Gu@amd.com>, Evan Quan <evan.quan@amd.com>,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	Alex Deucher <alexander.deucher@amd.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 18/63] drm/amd/pm: Use struct_group() for memcpy()
 region
Message-ID: <202108181619.B603481527@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-19-keescook@chromium.org>
 <753ef2d1-0f7e-c930-c095-ed86e1518395@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <753ef2d1-0f7e-c930-c095-ed86e1518395@amd.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="ll0X1F/1";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Aug 18, 2021 at 05:12:28PM +0530, Lazar, Lijo wrote:
>=20
> On 8/18/2021 11:34 AM, Kees Cook wrote:
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memcpy(), memmove(), and memset(), avoid
> > intentionally writing across neighboring fields.
> >=20
> > Use struct_group() in structs:
> > 	struct atom_smc_dpm_info_v4_5
> > 	struct atom_smc_dpm_info_v4_6
> > 	struct atom_smc_dpm_info_v4_7
> > 	struct atom_smc_dpm_info_v4_10
> > 	PPTable_t
> > so the grouped members can be referenced together. This will allow
> > memcpy() and sizeof() to more easily reason about sizes, improve
> > readability, and avoid future warnings about writing beyond the end of
> > the first member.
> >=20
> > "pahole" shows no size nor member offset changes to any structs.
> > "objdump -d" shows no object code changes.
> >=20
> > Cc: "Christian K=C3=B6nig" <christian.koenig@amd.com>
> > Cc: "Pan, Xinhui" <Xinhui.Pan@amd.com>
> > Cc: David Airlie <airlied@linux.ie>
> > Cc: Daniel Vetter <daniel@ffwll.ch>
> > Cc: Hawking Zhang <Hawking.Zhang@amd.com>
> > Cc: Feifei Xu <Feifei.Xu@amd.com>
> > Cc: Lijo Lazar <lijo.lazar@amd.com>
> > Cc: Likun Gao <Likun.Gao@amd.com>
> > Cc: Jiawei Gu <Jiawei.Gu@amd.com>
> > Cc: Evan Quan <evan.quan@amd.com>
> > Cc: amd-gfx@lists.freedesktop.org
> > Cc: dri-devel@lists.freedesktop.org
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > Acked-by: Alex Deucher <alexander.deucher@amd.com>
> > Link: https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Flore.kernel.org%2Flkml%2FCADnq5_Npb8uYvd%2BR4UHgf-w8-cQj3JoODjviJR_Y9w9w=
qJ71mQ%40mail.gmail.com&amp;data=3D04%7C01%7Clijo.lazar%40amd.com%7C92b8d2f=
072f0444b9f8508d9620f6971%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C6376=
48640625729624%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIi=
LCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=3DrKh5LUXCRUsorYM3kSpG2tkB%=
2Fczwl9I9EBnWBCtbg6Q%3D&amp;reserved=3D0
> > ---
> >   drivers/gpu/drm/amd/include/atomfirmware.h           |  9 ++++++++-
> >   .../gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h    |  3 ++-
> >   drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h  |  3 ++-
> >   .../gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h   |  3 ++-
>=20
> Hi Kees,

Hi! Thanks for looking into this.

> The headers which define these structs are firmware/VBIOS interfaces and =
are
> picked directly from those components. There are difficulties in grouping
> them to structs at the original source as that involves other component
> changes.

So, can you help me understand this a bit more? It sounds like these are
generated headers, yes? I'd like to understand your constraints and
weight them against various benefits that could be achieved here.

The groupings I made do appear to be roughly documented already,
for example:

   struct   atom_common_table_header  table_header;
     // SECTION: BOARD PARAMETERS
+  struct_group(dpm_info,

Something emitted the "BOARD PARAMETERS" section heading as a comment,
so it likely also would know where it ends, yes? The good news here is
that for the dpm_info groups, they all end at the end of the existing
structs, see:
	struct atom_smc_dpm_info_v4_5
	struct atom_smc_dpm_info_v4_6
	struct atom_smc_dpm_info_v4_7
	struct atom_smc_dpm_info_v4_10

The matching regions in the PPTable_t structs are similarly marked with a
"BOARD PARAMETERS" section heading comment:

--- a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
+++ b/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
@@ -643,6 +643,7 @@ typedef struct {
   // SECTION: BOARD PARAMETERS
=20
   // SVI2 Board Parameters
+  struct_group(v4_6,
   uint16_t     MaxVoltageStepGfx; // In mV(Q2) Max voltage step that SMU w=
ill request. Multiple steps are taken if voltage change exceeds this value.
   uint16_t     MaxVoltageStepSoc; // In mV(Q2) Max voltage step that SMU w=
ill request. Multiple steps are taken if voltage change exceeds this value.
=20
@@ -728,10 +729,10 @@ typedef struct {
   uint32_t     BoardVoltageCoeffB;    // decode by /1000
=20
   uint32_t     BoardReserved[7];
+  );
=20
   // Padding for MMHUB - do not modify this
   uint32_t     MmHubPadding[8]; // SMU internal use
-
 } PPTable_t;

Where they end seems known as well (the padding switches from a "Board"
to "MmHub" prefix at exactly the matching size).

So, given that these regions are already known by the export tool, how
about just updating the export tool to emit a struct there? I imagine
the problem with this would be the identifier churn needed, but that's
entirely mechanical.

However, I'm curious about another aspect of these regions: they are,
by definition, the same. Why isn't there a single struct describing
them already, given the existing redundancy? For example, look at the
member names: maxvoltagestepgfx vs MaxVoltageStepGfx. Why aren't these
the same? And then why aren't they described separately?

Fixing that would cut down on the redundancy here, and in the renaming,
you can fix the identifiers as well. It should be straight forward to
write a Coccinelle script to do this renaming for you after extracting
the structure.

> The driver_if_* files updates are frequent and it is error prone to manua=
lly
> group them each time we pick them for any update.

Why are these structs updated? It looks like they're specifically
versioned, and aren't expected to change (i.e. v4.5, v4.6, v4.10, etc).

> Our usage of memcpy in this way is restricted only to a very few places.

True, there's 1 per PPTable_t duplication. With a proper struct, you
wouldn't even need a memcpy().

Instead of the existing:
               memcpy(smc_pptable->I2cControllers, smc_dpm_table_v4_7->I2cC=
ontrollers,
                       sizeof(*smc_dpm_table_v4_7) - sizeof(smc_dpm_table_v=
4_7->table_header));

or my proposed:
               memcpy(&smc_pptable->v4, &smc_dpm_table_v4_7->dpm_info,
                      sizeof(smc_dpm_table_v4_7->dpm_info));

you could just have:
		smc_pptable->v4 =3D smc_dpm_table_v4_7->dpm_info;

since they'd be explicitly the same type.

That looks like a much cleaner solution to this. It greatly improves
readability, reduces the redundancy in the headers, and should be a
simple mechanical refactoring.

Oh my, I just noticed append_vbios_pptable() in
drivers/gpu/drm/amd/pm/powerplay/hwmgr/vega12_processpptables.c
which does an open-coded assignment of the entire PPTable_t, including
padding, and, apparently, the i2c address twice:

        ppsmc_pptable->Vr2_I2C_address =3D smc_dpm_table.Vr2_I2C_address;

        ppsmc_pptable->Vr2_I2C_address =3D smc_dpm_table.Vr2_I2C_address;

> As another option - is it possible to have a helper function/macro like
> memcpy_fortify() which takes the extra arguments and does the extra compi=
le
> time checks? We will use the helper whenever we have such kind of usage.

I'd rather avoid special cases just for this, especially when the code
here is already doing a couple things we try to avoid in the rest of
the kernel (i.e. open coded redundant struct contents, etc).

If something mechanically produced append_vbios_pptable() above, I bet
we can get rid of the memcpy()s entirely and save a lot of code doing a
member-to-member assignment.

What do you think?

-Kees

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202108181619.B603481527%40keescook.
