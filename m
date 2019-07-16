Return-Path: <clang-built-linux+bncBAABBX74XDUQKGQEUUOOHZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1863A6B0E0
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 23:15:12 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id l7sf1928668lfc.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jul 2019 14:15:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563311711; cv=pass;
        d=google.com; s=arc-20160816;
        b=ERv4SUZJjUBvnzlqBcDJfwci0tMEe+2IPDe8CTkcX4uJRvboTCWjJgMfohN4ESJYhk
         e9OPmw9/axnyz1z3PWp6exbGPoHI0hRHUPKFTREPOu1ADFSYb/LoH4jjT3KEilS2e5Py
         IEtbkdXAKY4dGPqqny9kBoZLNsKLI4gvLu5G3Pr/aPPeHvRDq+WyBz6rMbYXCSMs9nPM
         LP02ZH8srkh+60erFwstdTy6MvA4R190G8QVs9wrNtGXiMMuP3lnkjlawsRxwHdnTblb
         E2mgK5hRVtdrdthD7FMmi0yPMgsLG2N0XKU9ZRWl+hnH1UIgYgGB4kS/va6NvqBrCOi6
         BbDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:user-agent
         :references:in-reply-to:date:cc:to:from:message-id:sender
         :dkim-signature;
        bh=Ar1w2ySl+2rTGYF6VgG4E83GthJCLnGNhNOxAi9SB2I=;
        b=XH4ZLN+icfM5qWXe8a1uHUEGIdsG5YlztieaK/U9XerCg6paS3ipHLQkZzBMAHU1/T
         KXyciE8VTxaK57bIumuoij/MbESw4xbPNvia0VTbrQBLuFjNk8GbJojkeOS3W7jJdP0L
         h4H3eVQDhWko4AvdDky3J6W+tPb1/QJzt22Hed5HYp9ewNwzQrkd1BrPS/nat7A4EQ/V
         46db8E3sqUIyg3mLUE8/y12HHTCDOuPOj+1IimrlqQ77ichSlVebLe27u2aGNT6kuwYr
         FYZZSYAnfwkzLSVrZXgH/hWJf3N0u8uVfVjs5Zde5RVITIS4Ck/wDSdeQ2d9w+k/1ST+
         9GhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of luca@coelho.fi designates 176.9.41.70 as permitted sender) smtp.mailfrom=luca@coelho.fi
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:from:to:cc:date:in-reply-to:references:user-agent
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ar1w2ySl+2rTGYF6VgG4E83GthJCLnGNhNOxAi9SB2I=;
        b=BobP129l0ejfYcwNpOCw3DJfAX53PBFcvWe6qM7eCI4Hosoyedgyfu2mLv7EPMRAnY
         57RxKTpTTxHn18G9xqg3xJ2Hl6vomqetZT6If/t1mBLEHJiWmHmqx7skZNkI2gdKDike
         bATTkXqB8nflrDZNx//IjXogL2rm8+G8hT9rl1M/u/qHDdx+73jOPje1MfxMKC7/SwFb
         OTCHGo0xnkJCuASWv1nofufqk48DRDIzcjN+tq999rVPZD/+eNT9msElPOLqylF2yJhb
         qqqgNNFc1aU4Y8L2HnBdigzWCfRVYCHjoojT1swMxEyuBAkpLIKZ5vIYv0vA4x4Vxpht
         x+zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ar1w2ySl+2rTGYF6VgG4E83GthJCLnGNhNOxAi9SB2I=;
        b=gd6WmziXD4cpCUH/s3OoMX5ycI+zFIFRwLXi3E4JKKuBImKBTpnUkCdYXlemD3xi35
         WX+LQHWczSe21aHnvoPBE5gOaIeTOOuf1QHt21zM7ydakZBJDqaO0/SmIunAoMbcZwDW
         NZimDJ60WicgxyEvlBTgQRFr/j3OOkaVPydesJWCOLuNsRuehGnCaN8CJsqceXROFw0Q
         OjPR+HfAwP84vMeWAs1zQ2VlJAYHPmRw51qjiL0EE88brWslU6+pTBppP46wgn+eb2yp
         9SfAENu26ktwou+6fgcavkoAXDny/dxRkS3FRdAHlxFXmstQLp/Mk1qRi5e0ly6GroWk
         CynA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV+Qdrm9TnDqDifevYv/6Di4VPoqs1jRgw80ME5Kkk3DhQaC+kQ
	jWwVyRuhmu4MScV0Se/T4xs=
X-Google-Smtp-Source: APXvYqxiu8Gfy4GaUaEXdBcfIK0buBbCKe65QtOYpNPZ/UquEcrQOxjHKQmb95cduJ4hb5pxGxXe0Q==
X-Received: by 2002:a19:48c5:: with SMTP id v188mr15508906lfa.69.1563311711560;
        Tue, 16 Jul 2019 14:15:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4c2e:: with SMTP id u14ls1759632lfq.15.gmail; Tue, 16
 Jul 2019 14:15:10 -0700 (PDT)
X-Received: by 2002:a19:6e41:: with SMTP id q1mr5316387lfk.20.1563311710932;
        Tue, 16 Jul 2019 14:15:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563311710; cv=none;
        d=google.com; s=arc-20160816;
        b=VLPHTf9fqIEoLYOoDs5+mrRoSWnggpn17AyvBtUk0AeG4xHZAcD5VNFyMAkPhPKyo3
         pukvFpiy+iLD9WgNkbySHyPvJskRSxSIQSX2TibnLWczMxitpS86jH7ZwZfcqBaY1jhO
         vLoRscNK/ligh+aCO/9fpqvM0QjKZ0NNpAHN2qWyO+GFCq7Fful637EjdQ97+nXkbnjZ
         YYRVtrE2v/YJa8bP92dZ3VSpdP9kslcSaV5PzScxFJLZmhGSfGAoB9J3KyyFq2vt+NhO
         eIGqKcHya8L1dUImpl18cGZD3/zgAeeicjLzJ4WYfeVyeTpQj0ikOPC2rL7gWdNeD8wa
         UWcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:mime-version:user-agent
         :references:in-reply-to:date:cc:to:from:message-id;
        bh=SIfdpaLrnWe/9dyeJDKXLSLJaPkfLZtucNLsJvYWmzE=;
        b=NT5ZHABAEY23RXdFsefsYs0btKFt9nUidzMrZV1S+HEUUyVtH6xo94J/TKUGQmcUkl
         UHnDUrg3AfSPsYmWYCk5GVwbpWV4UiN+GTUfTcdlhPm++jeM0FP3r7H/oUgqDNa5sJ8N
         IgtaszPhG9JCgjrdZ0f+luiGM1W3DRsMcLiy/sk60jC7Y0nKX5dHh9vgLiHtC4OjyJ8s
         1qzMubYgTU+SvI+aJ1hpwZbNE24GfAReIFD+xOHr6DGH+L0+opwHmzFKD5EipQkGkuhI
         3TrhAM4cUz2dnaoGcuzY6SaI5aFJ+yQAEJLIYpGFjBBwfabmDCpL534pj6RGle1LkNbi
         ht2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of luca@coelho.fi designates 176.9.41.70 as permitted sender) smtp.mailfrom=luca@coelho.fi
Received: from farmhouse.coelho.fi (paleale.coelho.fi. [176.9.41.70])
        by gmr-mx.google.com with ESMTPS id b8si885558lfp.3.2019.07.16.14.15.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 16 Jul 2019 14:15:10 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of luca@coelho.fi designates 176.9.41.70 as permitted sender) client-ip=176.9.41.70;
Received: from 91-156-6-193.elisa-laajakaista.fi ([91.156.6.193] helo=redipa)
	by farmhouse.coelho.fi with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <luca@coelho.fi>)
	id 1hnUmi-0000Yc-7k; Wed, 17 Jul 2019 00:14:54 +0300
Message-ID: <da053a97d771eff0ad8db37e644108ed2fad25a3.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Nick Desaulniers <ndesaulniers@google.com>, Joe Perches
 <joe@perches.com>,  Kalle Valo <kvalo@codeaurora.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor
 <natechancellor@gmail.com>,  Johannes Berg <johannes.berg@intel.com>,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>, Intel Linux Wireless
 <linuxwifi@intel.com>, "David S. Miller" <davem@davemloft.net>, Shahar S
 Matityahu <shahar.s.matityahu@intel.com>, Sara Sharon
 <sara.sharon@intel.com>,  linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Date: Wed, 17 Jul 2019 00:14:49 +0300
In-Reply-To: <CAKwvOdkD_r2YBqRDy-uTGMG1YeRF8KokxjikR0XLkXLsdJca0g@mail.gmail.com>
References: <20190712001708.170259-1-ndesaulniers@google.com>
	 <b219cf41933b2f965572af515cf9d3119293bfba.camel@perches.com>
	 <CAKwvOdkD_r2YBqRDy-uTGMG1YeRF8KokxjikR0XLkXLsdJca0g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	TVD_RCVD_IP,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH -next] iwlwifi: dbg: work around clang bug by marking
 debug strings static
X-Original-Sender: luca@coelho.fi
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of luca@coelho.fi designates
 176.9.41.70 as permitted sender) smtp.mailfrom=luca@coelho.fi
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

On Tue, 2019-07-16 at 10:28 -0700, Nick Desaulniers wrote:
> On Thu, Jul 11, 2019 at 7:15 PM Joe Perches <joe@perches.com> wrote:
> > On Thu, 2019-07-11 at 17:17 -0700, Nick Desaulniers wrote:
> > > Commit r353569 in prerelease Clang-9 is producing a linkage failure:
> > > 
> > > ld: drivers/net/wireless/intel/iwlwifi/fw/dbg.o:
> > > in function `_iwl_fw_dbg_apply_point':
> > > dbg.c:(.text+0x827a): undefined reference to `__compiletime_assert_2387'
> > > 
> > > when the following configs are enabled:
> > > - CONFIG_IWLWIFI
> > > - CONFIG_IWLMVM
> > > - CONFIG_KASAN
> > > 
> > > Work around the issue for now by marking the debug strings as `static`,
> > > which they probably should be any ways.
> > > 
> > > Link: https://bugs.llvm.org/show_bug.cgi?id=42580
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/580
> > > Reported-by: Arnd Bergmann <arnd@arndb.de>
> > > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > >  drivers/net/wireless/intel/iwlwifi/fw/dbg.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/net/wireless/intel/iwlwifi/fw/dbg.c b/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
> > > index e411ac98290d..f8c90ea4e9b4 100644
> > > --- a/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
> > > +++ b/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
> > > @@ -2438,7 +2438,7 @@ static void iwl_fw_dbg_info_apply(struct iwl_fw_runtime *fwrt,
> > >  {
> > >       u32 img_name_len = le32_to_cpu(dbg_info->img_name_len);
> > >       u32 dbg_cfg_name_len = le32_to_cpu(dbg_info->dbg_cfg_name_len);
> > > -     const char err_str[] =
> > > +     static const char err_str[] =
> > >               "WRT: ext=%d. Invalid %s name length %d, expected %d\n";
> > 
> > Better still would be to use the format string directly
> > in both locations instead of trying to deduplicate it
> > via storing it into a separate pointer.
> > 
> > Let the compiler/linker consolidate the format.
> > It's smaller object code, allows format/argument verification,
> > and is simpler for humans to understand.
> 
> Whichever Kalle prefers, I just want my CI green again.

We already changed this in a later internal patch, which will reach the
mainline (-next) soon.  So let's skip this for now.

--
Cheers,
Luca.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/da053a97d771eff0ad8db37e644108ed2fad25a3.camel%40coelho.fi.
