Return-Path: <clang-built-linux+bncBDC3JRMYUQLRBHWURD3AKGQECRRF7XQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0F51D70D7
	for <lists+clang-built-linux@lfdr.de>; Mon, 18 May 2020 08:24:31 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id h83sf3171922oib.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 17 May 2020 23:24:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589783071; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z1xjGYPdhsMf4bGU0AhKBrgp4/lPGskqhi8OWJ231Xbr0uIx/ZCyxDzISSHxd5xdWQ
         LvGJ9Itvm4ZvYcaCk9ujcOlyo6n+D8jzq+FYojflv7CTdYV1qO+IF+CQjDE/5g4bZPE1
         pdWRE1TuZ9pQMpf4jLIobTxyL7viZI3Da8wrinipMoN1JYuQZwTadJ9hKUhMEHmtHZZO
         TlZWp6yVXoyO6tf5AAjJ92T/kUh8bB4SBPGG1w2Q8RX96LbbJLE4FlvHqrb02B4hRg5+
         /AvTvAnw9Sd1KIHaVAenNpKJZFa8yPNSZdI6uoTDHKRub/2J//ujB7b7Ukr1Mhas45ut
         xrSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=XBwGZ6jLXpdu5jvLgJb8F8ARaALv8o/oKqV/oCVnXGQ=;
        b=AuPI7vZv5JqImSTbDOm8emG7UcecKU5Fxh9C8IcJKHZ1TJHsuNUbMfjWEVMvSKvRF0
         9QuWEHuxzbNpI3sQ1RX7iRuRfT+hUpVO2sHVw/2unlz7S4U5TV+w5uvc9xpmV4FWSHeJ
         9MsUmc5rARqHI22zJgVqn1jJTWrb/EeoJGcZvcSxYq90yFXJEQT5Z/Xcy4LXkZh2nIup
         ZVRMltXudp2hzVKGcpGUqsnz62lYV2lP84GZwfZowCBlm/9a+0fYehWDpKFnMAf2Q7q1
         MPKdWo6+AegJcJujI/DaaDKZ2CIR2KKkffWCuHBe2FHNDO2kVUMnjbnxWn4OaYJh3cgm
         LLEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of zhenyuw@linux.intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=zhenyuw@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XBwGZ6jLXpdu5jvLgJb8F8ARaALv8o/oKqV/oCVnXGQ=;
        b=OLspSqwgj9/4ylNjTZKKyaq88lTZhjNowF7RdkIRurYsAZo2qPj8XZp8TzVgeVsLM4
         e8nZnaHiMeAJUAp4qTnjEzDaRXh4O3QW4bHQp6rZnoUNE3JyoxqvVgOM1YE6qltEij/K
         xL0UycpA/5Je4wf7pb8jc73SvxLbuzWkJa6uDPwVtWMyN0vLUsXcX6+VAj4zcPNKefxt
         +1gK/VvyGmq1FbV9e9Md0Es6qJu+239AIdUINd7fG7rs8Nalp4HPZ1muuOn0z6uimOAc
         PsX70U4rQnTpoSG1MakGPg/S9f17fwB7XMHibTPcV4AHJIUiTpLV/AUg/kRmjRpktrKO
         9e8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XBwGZ6jLXpdu5jvLgJb8F8ARaALv8o/oKqV/oCVnXGQ=;
        b=HrezCRByPKvPLuJpRH35x+5lO/piIUSH3qao9K9tmnYNbA8GNnFpiinNjq+s7/VLw2
         GugPRsYu5IdakkjzhYrYeqyn9ed7Df3Zic28HDCMNg9epT6paYzIemlYW+F4fOJIFsbo
         RCr3gZf5OxmFSL1genRHfX+ROb5BD+NQI2JRiWiY4dpwD1EPdXI2tYZ5Es9zY/8bE9Up
         Pe9Us8MXmzavmsqfnom0Y+Vilo1mBa/6FTFhgORez61Yu3rTtSZeZKDQgVrJVTJZfFeO
         ZX5P4FEBBtanLsB4y9hreNtKgywLioxcHPo55qpuwVqHy+iO1HVDcS55Aydcm+VBckUa
         qDiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LkPdGj9LttdLmhl29kBaXIhbYksfZVIxdLU5uXKJcvMdndQZx
	hofYVrOGlqU/lql75pW34K0=
X-Google-Smtp-Source: ABdhPJwgZVpL02eSU0mDhsdEjGMlXvXxJMjoYJKbYpyqz3Aj2798rX/MbT1cvkmxxEstYgDBHspUXw==
X-Received: by 2002:a9d:67c2:: with SMTP id c2mr10354267otn.227.1589783070862;
        Sun, 17 May 2020 23:24:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:86a:: with SMTP id 97ls1758689oty.9.gmail; Sun, 17 May
 2020 23:24:30 -0700 (PDT)
X-Received: by 2002:a9d:6a95:: with SMTP id l21mr6337153otq.239.1589783070382;
        Sun, 17 May 2020 23:24:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589783070; cv=none;
        d=google.com; s=arc-20160816;
        b=Iry+RWIupsjXWB8BWejvkIfuPDwS+ewBvvTj9kFSEkRmxToFqw3XHAFjCuJjUPAM9y
         DF+W5MF26lm9dLaCg/DBThTGMmoEWVvnGnbqBtdSoZJ0i36DFZ2q+v4Z09BXf78KI53u
         dACnx7yTmVoQArRReOgCW4D+pG3vYwjyc7oaDwBk+s5BgwFq1boHcyqEzdx4dJ/TS1he
         0VuyQR00ynrPP/IMbLXVo2CZF9npL9eJ0Q9HKx+I9m4AgHFgdfUPInxYx+XGvbqRyf9x
         4YPjoujtpcPzkZ7cs/BN+XV/uJzLKj/VAnxsENq6dLF8u3BgPgm/ibz7MmIyEcHXPyIx
         4orQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=5MTGs4nJKhZSjXvOOzNMz0TP8WiaouHxybojRdCjxVo=;
        b=P02LAgA4ci7ivi9z/+4A6Exz5RhYYfxwTMJ/xQcQGw7P+HCfTs56CKQlvJz236v66p
         9cMWkQlSn/rkzUIjfH0bbnHpBQYj5iyS8dIq7MOGmmbEqK0j2oVGoUAqZp8MrSfAbxgV
         FL/1esavrwjKIRw6zMlwvu3Ca4owV/cwjwFNJgbJfNsUGLfqRuq4DFur9/J6Ydv2f4wG
         rA2D36i2U+8562ggU70YMj32MM1F3jh7wnLiJZ1GcG9l3Em5daa9RAcy/Q5NPMnadWiw
         d3c9D/+O1YOBAHNxdGdvlFvxs8c20BdhOW4vNIYGeN6kYlxW82F8TIaNhNtHwlTO0oy4
         u1Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of zhenyuw@linux.intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=zhenyuw@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id w196si928043oif.4.2020.05.17.23.24.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 May 2020 23:24:30 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of zhenyuw@linux.intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: 7OebLfc69vh7PnpDA5JzEHlUtRKG5sgux23dnIRkLemPcTXsk65XuZjczzDBGLC1MIIyGPSkOb
 Njj/0GydKTaQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 May 2020 23:24:28 -0700
IronPort-SDR: i/Efo5wE8sji1KgHmHKQOoWISCOrfbaG9dNAnzdGRzbN+bl1tSNbeTVj+LVpGkktlgEAS0whlt
 u7ComdAa8dGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,406,1583222400"; 
   d="asc'?scan'208";a="299674577"
Received: from zhen-hp.sh.intel.com (HELO zhen-hp) ([10.239.160.147])
  by orsmga008.jf.intel.com with ESMTP; 17 May 2020 23:24:25 -0700
Date: Mon, 18 May 2020 14:09:29 +0800
From: Zhenyu Wang <zhenyuw@linux.intel.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Zhenyu Wang <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, clang-built-linux@googlegroups.com,
	intel-gvt-dev@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Mark check_shadow_context_ppgtt as maybe unused
Message-ID: <20200518060929.GS18545@zhen-hp.sh.intel.com>
Reply-To: Zhenyu Wang <zhenyuw@linux.intel.com>
References: <20200516023545.3332334-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="t54s24TTWYm6oOX+"
Content-Disposition: inline
In-Reply-To: <20200516023545.3332334-1-natechancellor@gmail.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-Original-Sender: zhenyuw@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of zhenyuw@linux.intel.com
 designates 192.55.52.115 as permitted sender) smtp.mailfrom=zhenyuw@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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


--t54s24TTWYm6oOX+
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

On 2020.05.15 19:35:45 -0700, Nathan Chancellor wrote:
> When CONFIG_DRM_I915_DEBUG_GEM is not set, clang warns:
> 
> drivers/gpu/drm/i915/gvt/scheduler.c:884:1: warning: function
> 'check_shadow_context_ppgtt' is not needed and will not be emitted
> [-Wunneeded-internal-declaration]
> check_shadow_context_ppgtt(struct execlist_ring_context *c, struct
> intel_vgpu_mm *m)
> ^
> 1 warning generated.
> 
> This warning is similar to -Wunused-function but rather than warning
> that the function is completely unused, it warns that it is used in some
> expression within the file but that expression will be evaluated to a
> constant or be optimized away in the final assembly, essentially making
> it appeared used but really isn't. Usually, this happens when a function
> or variable is only used in sizeof, where it will appear to be used but
> will be evaluated at compile time and not be required to be emitted.
> 
> In this case, the function is only used in GEM_BUG_ON, which is defined
> as BUILD_BUG_ON_INVALID, which intentionally follows this pattern. To
> fix this warning, add __maybe_unused to make it clear that this is
> intentional depending on the configuration.
> 
> Fixes: bec3df930fbd ("drm/i915/gvt: Support PPGTT table load command")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1027
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/gpu/drm/i915/gvt/scheduler.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
> index f776c92de8d7..0fb1df71c637 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -880,7 +880,7 @@ static void update_guest_pdps(struct intel_vgpu *vgpu,
>  				gpa + i * 8, &pdp[7 - i], 4);
>  }
>  
> -static bool
> +static __maybe_unused bool
>  check_shadow_context_ppgtt(struct execlist_ring_context *c, struct intel_vgpu_mm *m)
>  {
>  	if (m->ppgtt_mm.root_entry_type == GTT_TYPE_PPGTT_ROOT_L4_ENTRY) {
> 
> base-commit: bdecf38f228bcca73b31ada98b5b7ba1215eb9c9

Thanks for the fix!

Acked-by: Zhenyu Wang <zhenyuw@linux.intel.com>

I'll pick up for gvt-next-fixes pull.

-- 
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200518060929.GS18545%40zhen-hp.sh.intel.com.

--t54s24TTWYm6oOX+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQTXuabgHDW6LPt9CICxBBozTXgYJwUCXsImmQAKCRCxBBozTXgY
JxfOAJ94e1oxLhfjkCYgNWLtG0s7S2z1fACggFwQWbFs3UxsTHtWE9Ln1GA6M2A=
=gdfP
-----END PGP SIGNATURE-----

--t54s24TTWYm6oOX+--
