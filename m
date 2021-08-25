Return-Path: <clang-built-linux+bncBD3ZPWOPXYGBBC5ITCEQMGQEDEPIOAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCF03F726A
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 11:57:32 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id x19-20020a05620a099300b003f64d79cbbasf10671827qkx.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 02:57:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629885452; cv=pass;
        d=google.com; s=arc-20160816;
        b=EeyIMHYOyrkIzcEoYCb6eQ0+ezosrOqv23SVUVSI1S9ltvtOcQ7PQ4L1EXJ5PVIvA+
         noUtFEVAM1RaDtX13F0UfZ/u64tGN+UTMqXnLge9vM9Hw78pNllhdwJ21t63Ma+NsqmV
         wMPHF7c1AP7KS57bhLMmrBMEqWVRjbYD2gZHUsIIP7aqTd9DBD/D+i6hM3DrRj/GsLKg
         0NjSCJ8J2bPEB2AXuiLdxBKnywKYPjlk7vBkv7+kCN6+r4Ob4mmY01v2QyeHJK8GP530
         Gvzy1UekdD+5/JMefIn8ZQXQ+JnQz6uxnIWoSGnRS4x4vyTHzPvsxZUkZ8GuAySogjWN
         Ru5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=l8KbvJnhiPIOpyuHJeRIV1/ZSlYUKzCE4DVkap30Bj8=;
        b=umd26q4CEINP7nWi0CWZa7n8J8KreHr76NR4ewMaKnZGkIgaZ6v4lPoM851qUVlSZv
         4X3wx49G33V7fjC91wylkKu/AqL+2lUDOsxWubj22rbZAhBmlDAU97ql97e95XOPOYpj
         sr7TnXTzrKF836krk3mwPzBEv2xT6lmHQUMfO/6c24ku/PTQIL8np+7d6UuiaVq4hWn5
         fT86czvMn6E3EwKshl2e9KQJpJFNhAVGoRnsE6R7BHTrUJX86CaWTusn0uj2eb7VMrf5
         UWm8RLfEGPB0MbaSatNwe+/QR8gr2ZIABLKIpMdCAxlPNyCHen5pcPEa7DyDmnjwcPON
         IIPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of thomas.hellstrom@linux.intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l8KbvJnhiPIOpyuHJeRIV1/ZSlYUKzCE4DVkap30Bj8=;
        b=rg1hkqgFgJVbIBAtUB7RKN28LYra13XfHxbC6s8Fzhp6qrtIuYCW/PYM5C2Kbwgzht
         R4HzfAOMbto8mm4E170x/1Gj2VQaKq16M9LjwFZreupPQsKJ0kdT4mwUXHEBnyXfxTz4
         LBYnJJN4R8jjLugVJVYg/VBM2BZWUzU+DYFJCzxGOUcLyW9UQvfVMN7FH0goUiTL1bmP
         6g3YeLwJjYoSNaKeBOyKFiiYeji5CHq5hBJzYm86+orHOhPYne+SfOrb+qFM96nuXuwF
         WHw/ruTZppq4wqxWlshldr+JeNH++psLuNFOHXIJ/BXd4W16G6Byd0Ea/AeilNJfM9MC
         sK/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l8KbvJnhiPIOpyuHJeRIV1/ZSlYUKzCE4DVkap30Bj8=;
        b=kfLhWcp/L8j2nhUnFUBF5czJdoaSTsDIt3YygZu6PiU8B28CKa89Ew+cdTM0rv6PBJ
         fKj5PgO+HK2gFAUKG3S0IvZ8bQtFA1RtdeOs4asLseaGri9EGeNWvg/pr8F8y+A3N6ib
         C8CzP9EbrolmrBgQT0jmkio7OBrV7td1wJO1jh70m883DppunZ6yzdTFczX7aRe4tyz4
         Rr+ORSStofbxNOdu73r1lyXPuOzt4h8t2BAX9DADJVAvdn0KjUH5rZg7mqwb7aYrHVJV
         +bykxbwueVLlXswz3FW6xSqPvNuTuTG9T7Pglis4uLWRd1Aruy0z670mio8BYfuzJQlm
         p1hg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530COEtvusjk+K6Qi5z9SgDdMpPSfBrzRe/qCKCJlBJY6YFQuq5v
	eM5y/0cYWwQUqomV05rhTS8=
X-Google-Smtp-Source: ABdhPJxglS3tOuUdQG2LwRGVQH5TeknOAL9lzOr5HJPctgHtZMafeTuiqEBgsm510YGyJ01O0SIb0Q==
X-Received: by 2002:a37:c97:: with SMTP id 145mr30589286qkm.121.1629885452054;
        Wed, 25 Aug 2021 02:57:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a4c7:: with SMTP id n190ls884597qke.4.gmail; Wed, 25 Aug
 2021 02:57:31 -0700 (PDT)
X-Received: by 2002:a37:a541:: with SMTP id o62mr30899887qke.491.1629885451575;
        Wed, 25 Aug 2021 02:57:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629885451; cv=none;
        d=google.com; s=arc-20160816;
        b=rMI51CUxTucJkkbza+aW82BQwaD3oPHcyeB8rBc7ypHsg4IVDRbnS3n4Z/XjK1rDij
         1t6Dj7CP9zbZ5MoQUshhNcbSNwIRBalY2etSHmm8kXR0xjW0C9Wm3QuYR1Qzo6WXyWeW
         U7ay7sL2Sc73jEd1AE4OgxjomoePNWzCFjdnEkONzkW9CgeCImAdqjSotBehIoVNsze7
         PSo+Jz83e0mWv8aANCKc6dUuK3I25pBwFTXlIrpzefF7HdKhL1CZY09oiRjlUP8x5xBT
         77rvRtptisrMLSL3KGldhz1RpNxndjeH5pPBsSUgeJuKZrW4X//fFwr6zLPcrsA6j9TG
         LIlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=HTGwlETEEV1O0uBtm8Lgx0xPvfLsDplkfTQU44kCRJg=;
        b=mqJy39prExheyjvC/7mUG8n/tnc760j1Vn2wGW3huhbcAJ/WDAZ9CyIywvIMxSeT5Z
         1pbt/Kq7GZ02YPxFpyZF3SalqauBQv61VwRvrmRlXOhqdSuQkf9hjhygKoOU2dyOVsLn
         T8Iqd0zKurijKOV3Te9BLx7ISkSMFwFOAZYgW97kt7MRK53c3Xy9O3iEtI1xescRrryF
         T6vuESEBKLmnkDRlu33pUVdgSZRduU4czNiNelEcfWKC7mXqQB07RZ7SILa77UfzUF2Y
         wq5yGgufUybJwtokNj3DUDDWXSaMNoav74YoNHghuBExhW+O/NHloyQr9VpYZ7kUdZPn
         MX7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of thomas.hellstrom@linux.intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id d201si274248qkg.4.2021.08.25.02.57.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 02:57:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of thomas.hellstrom@linux.intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="217495767"
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; 
   d="scan'208";a="217495767"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2021 02:57:30 -0700
X-IronPort-AV: E=Sophos;i="5.84,350,1620716400"; 
   d="scan'208";a="426393181"
Received: from pjthomps-mobl1.ger.corp.intel.com (HELO [10.249.254.76]) ([10.249.254.76])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Aug 2021 02:57:26 -0700
Subject: Re: [PATCH 2/3] drm/i915/selftests: Always initialize err in
 igt_dmabuf_import_same_driver_lmem()
To: Nathan Chancellor <nathan@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>,
 Matthew Auld <matthew.auld@intel.com>,
 "Michael J. Ruhl" <michael.j.ruhl@intel.com>,
 Nick Desaulniers <ndesaulniers@google.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, llvm@lists.linux.dev,
 Dan Carpenter <dan.carpenter@oracle.com>
References: <20210824225427.2065517-1-nathan@kernel.org>
 <20210824225427.2065517-3-nathan@kernel.org>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <354f7760-7b43-8e3f-414b-1556dabbcdb3@linux.intel.com>
Date: Wed, 25 Aug 2021 11:57:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210824225427.2065517-3-nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: thomas.hellstrom@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of thomas.hellstrom@linux.intel.com
 designates 134.134.136.24 as permitted sender) smtp.mailfrom=thomas.hellstrom@linux.intel.com;
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


On 8/25/21 12:54 AM, Nathan Chancellor wrote:
> Clang warns:
>
> drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:127:13: warning:
> variable 'err' is used uninitialized whenever 'if' condition is false
> [-Wsometimes-uninitialized]
>          } else if (PTR_ERR(import) !=3D -EOPNOTSUPP) {
>                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:138:9: note:
> uninitialized use occurs here
>          return err;
>                 ^~~
> drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:127:9: note: remove
> the 'if' if its condition is always true
>          } else if (PTR_ERR(import) !=3D -EOPNOTSUPP) {
>                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:95:9: note:
> initialize the variable 'err' to silence this warning
>          int err;
>                 ^
>                  =3D 0
>
> The test is expected to pass if i915_gem_prime_import() returns
> -EOPNOTSUPP so initialize err to zero in this case.
>
> Fixes: cdb35d1ed6d2 ("drm/i915/gem: Migrate to system at dma-buf attach t=
ime (v7)")
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Reviewed-by: Thomas Hellstr=C3=B6m <thomas.hellstrom@linux.intel.com>


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/354f7760-7b43-8e3f-414b-1556dabbcdb3%40linux.intel.com.
