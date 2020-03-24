Return-Path: <clang-built-linux+bncBAABBJU347ZQKGQEOTSUVVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id C9121190878
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 10:06:47 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id v83sf2782534vke.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 02:06:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585040806; cv=pass;
        d=google.com; s=arc-20160816;
        b=JrgsrCZM80SgwC/XYyLxNrrmy7aK5TU9+9lcaN0p0O+tRwK1YBY47A6vDE2prPfB/w
         dUNZERQiQRxO0KMkxfdBv/MGAKV4TdMQ7LmuaZ0EgPzzSueIW4OZec7PPQ+MVbOAf978
         pnXXVuK6uagB9lMKzQmu/kHxlZ7HFKQj2p4CHrafsP9O/Svc51VsziLkkCitiGwl6evX
         2RV+g4C6j4+uZUpQUHukqXgke6TvD/sdYjJlsX51/qRfuSklJRW7H5YBpYySm4IitrGi
         dkzBK8Pcf+WGh+HVQA2mzD3ye5SE864UZHxJeK9XR0jUCclRdTFvHFQ+fMlJnjCPt1M2
         Fh7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=r/N+0ZbqPOwbNlOF7j4hItOf7sv/vIeZE9HuHekc4G8=;
        b=TBo0GlViCFrtKoWr6qB92h+uHRDlPsKZkrXtmB904FiDhT11stAQ9pZ72zK0p8eGI5
         +ARLsVLgACgo4kZAv1xSwIS2qySmqRiS8PhA00GXC7R+zBIvQbLqAFxjNLiuuQPNJpAA
         TIECITaUGxTWYMtB0N99XgZou5fPilhf1qppRXJbOWMy2DNmnQVn2jXSbnBBSBAalFuO
         Ys04sv+WLkxkLIG3g4Xo5pje7bRTcSD4kqcxKwnHNLzwh5NEfKsF7rgtBwGlVg8H8bwZ
         o3TjKMqWsYWvHIewhCDS6IBJ8R0byl+brC+XrcMKcnc925U2DsgOfPTKZz/ybBh7IXn2
         79Gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=r6sgZBXR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r/N+0ZbqPOwbNlOF7j4hItOf7sv/vIeZE9HuHekc4G8=;
        b=s0WVjcgL9Ex+CpjsK3bK21E0QgYqe/VqbRcBLwqJYuRCwEgziI/cosp3QGKmBzfUbJ
         xwOTFxjPcKyIq+DV7fGdF283KfflJrJUierzbpwobTISKofjV8N8Ot0uiGYnByLO0cGe
         cLmy4xFcEJPcKTvdZhh1+4V5qbIsPMP4oFp4V57DhvUXup4RWTX0NFpl92S575CHOb51
         jHPIKu69ywF6nF32QTBfspSZ7EEuYnEgLc8xvqVKbbICDF0SpR+ZPFaFbIjYeyVPiBDR
         lXAD2Jtd7l/ie9s3T4QLO15b51NCp/ILf9yvTLaBQqsoYZle69uMjEp+J89busFxnUXe
         Dm6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r/N+0ZbqPOwbNlOF7j4hItOf7sv/vIeZE9HuHekc4G8=;
        b=S1uxUT890Z96OTtDxTN83nr9E9dxgTm9AmpOu8Y444CBCYgrTmdR1/kXAd1loQyiAz
         RMsCesE9++r/DkGSRhURmaIOMqaFyH7+EAVBu6/FyIzeFrOJzW6EeOleZSHNdbyC0BS7
         8xVzn9H71TySwP26kUtaeq031sxyRwei01gBuTuRGfS35NuGZK1VuM0lBxe+fKbo10SD
         g8rqU+ow9OLfnCp/KdF4mQbas4ERjTf8Dq4pNL2eeuiALPit+UiJS8pSgZoDywxcBFjj
         Bnz/9R50AgnJGbXn52BwpuNaYFOXtI1GnZyEb+7cHBJ2O9/wF8tMWUXButduCPhK4MfP
         oiPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2KRVHOrIo6FqsCveJ1BkKIG4Ve2Dttn8QapiBtQVLEtnfhE3Fq
	jrlqLSxSrWefObzej5lx0rs=
X-Google-Smtp-Source: ADFU+vsCIC9AVR3+ay1xVf6sNC7YGgL+/65OnFtjQgPh1bnMeAinxT6dihSy6Wcs1arVFpDzoQbV3w==
X-Received: by 2002:a1f:6182:: with SMTP id v124mr18067731vkb.48.1585040806766;
        Tue, 24 Mar 2020 02:06:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9acd:: with SMTP id c196ls328358vke.6.gmail; Tue, 24 Mar
 2020 02:06:46 -0700 (PDT)
X-Received: by 2002:a1f:9e17:: with SMTP id h23mr16837682vke.99.1585040806448;
        Tue, 24 Mar 2020 02:06:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585040806; cv=none;
        d=google.com; s=arc-20160816;
        b=VG11zmYBtggVS3i6oVYvgWYjHj0tOReIhaLae+vNy/dKAoHi0wNAWzT8viW7Mxtuu9
         AysDxUW1jOwCw3PSTT31MnyuFOk2XEC9ZfMCLAaqlT6eZn25ToJVwUSVeOErQK4wCigH
         nDCsWFNjqaMR+EymHiX1RsigTQSxuCHVb736+9cYcE/zMTJVmNeHBBeW1MjjhGiIiELK
         1H88UP64HKOQ9GbpkknQEYPUK2sLNL0de2fsN6lDu70Litkw8KdDtDdIyJg6cDxfpI/G
         tUByVPTwI8LUJnmHyd+fLcK454JoZUNIFDgzHY6M4dxehfx5X0ZkNbKjyucA+GzS8Er/
         70zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=qOMGdUkveaVDXO2a8tz7KDZMeyMjPwlo2zkk9aWn2yk=;
        b=IAuSTKvL9kJ9YS9Z79vLq22s00eQSEhNbk6cBxiuuxE9cyRmOtKqtSKeMM8eGqJEdC
         5kao4HPIJkyn+3RXHa7vxJ6xrlep14itD9yy+w2mTwFtyDs+2mn+4BDGHDISyNRO6PMr
         vhI4rtW9aoukbsoJG/bHe1eAGsKtIuCSGW73PRHNTNK34Sb9JP/cJh2JwDEyTImL5evz
         i7Z/EnHgX4GoSTFizeLYNVbYcPojl/i/ypw26wd44kWaNao29nOztA7XnGwooyynCUhi
         mlachannAr6wAgFRP4Vh2XFJe5urzKpgQyEv9fB3v+EPGkQdYvPBGJcwAyLjQwQCgh9X
         dgrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=r6sgZBXR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id h6si667493vko.4.2020.03.24.02.06.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 02:06:46 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com [209.85.222.49]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id 02O96OGT025001
	for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 18:06:25 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 02O96OGT025001
X-Nifty-SrcIP: [209.85.222.49]
Received: by mail-ua1-f49.google.com with SMTP id f9so732677uaq.8
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 02:06:25 -0700 (PDT)
X-Received: by 2002:ab0:3485:: with SMTP id c5mr16446308uar.109.1585040784226;
 Tue, 24 Mar 2020 02:06:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200323021053.17319-1-masahiroy@kernel.org>
In-Reply-To: <20200323021053.17319-1-masahiroy@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 24 Mar 2020 18:05:47 +0900
X-Gmail-Original-Message-ID: <CAK7LNARf0VwM309LsT_HaoF1Jq4Dx0XuFCAOOSr6yHXw50bR9g@mail.gmail.com>
Message-ID: <CAK7LNARf0VwM309LsT_HaoF1Jq4Dx0XuFCAOOSr6yHXw50bR9g@mail.gmail.com>
Subject: Re: [PATCH] drm/i915: remove always-defined CONFIG_AS_MOVNTDQA
To: Jani Nikula <jani.nikula@linux.intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=r6sgZBXR;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.91 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

Hi i915 maintainers,


On Mon, Mar 23, 2020 at 11:12 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> CONFIG_AS_MOVNTDQA was introduced by commit 0b1de5d58e19 ("drm/i915:
> Use SSE4.1 movntdqa to accelerate reads from WC memory").
>
> We raise the minimal supported binutils version from time to time.
> The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
> required binutils version to 2.21").
>
> I confirmed the code in $(call as-instr,...) can be assembled by the
> binutils 2.21 assembler and also by Clang's integrated assembler.
>
> Remove CONFIG_AS_MOVNTDQA, which is always defined.
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---


Please discard this.

I decided to fold this (10/16) into the following big series
because I was suggested to do so.

https://lore.kernel.org/patchwork/project/lkml/list/?series=435391





-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARf0VwM309LsT_HaoF1Jq4Dx0XuFCAOOSr6yHXw50bR9g%40mail.gmail.com.
