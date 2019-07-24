Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBBPX4HUQKGQEJC624JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id B431A732E8
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 17:38:45 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id v14sf22528812wrm.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 08:38:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563982725; cv=pass;
        d=google.com; s=arc-20160816;
        b=BAOP1od72uYJfj5OtDM9Dbicy2tFTTXRpGxYygnHwuJuIBGR4MwShdRCvwdRH6i892
         XeRVBg/JKSMIgJ32qOH9c088Ofpfzy773kisRIPSRyC9mU/WAgsEijzXoV+hkg3lu6F5
         ncLgAOsaCmMqHO0AYBYYIfffXPB30LG9HWIkMeP7LDpDzQ0U+baHUjDZzRuMN0JhnKST
         pw24tYu7jUk3nO64g9Ps+fQN8yc45Gz58JDnzQgd05J1OUVkHX8AvfbHQOf3h6mPN9Rx
         21OvLWMSWwTKQMGgL9MPkNE1LsnKpDRGJdyTbW3+mFEEb9BenaPxUEQYsKyfwLxIZjIL
         EVqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=P9hyU5JokprboCBwCkV2LBB1oM/H1J8q5cYr7vOaMvk=;
        b=LnDhpWbTVj1QMEfqHmbHFXiMMsUvAtN7poUSS58JzA7BwKG9Ntnrd9B5pPv84qTgXo
         whU5hPrntNuC0VO7YdGqmjdJjrlrVWqYgk0ASsjyi7QhFQhZJCb6k0YXdW2lurERPQeu
         FnGAyxeEFqh6ddhg3H867YKf2R9LFBXnTvQX8rEYjJHKy5f/5z2F2VfCFVOH4LOPTkXv
         7gegP4RTBkPdVBo/6LNCO+al/O+T/DjfdMswF7RCR0+2S4870EAFgy/zngqgeJqF5pAL
         yFdJuVcvAcSBbrP82TQZElUhayYD3BQvxOWjB524fCbOlyQqt254Me2r77IyNRDLnMTg
         gN7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ggg6dl2Q;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P9hyU5JokprboCBwCkV2LBB1oM/H1J8q5cYr7vOaMvk=;
        b=FdeE61wEFaTO1wrpNLevNVj4/RMBdDLaSvM49w7okWecRZv0MkLcxV7tZ643Onxy4N
         p3VVUeIvClOMyqJeFgzNvaOuiZKCg/9x/b3bCJM6mmjXZ9khb9ZvX5vwXniC0DC/laz2
         q59+BxoPvvuolM2/yhfS/3Ukc5Tz3k1XjTxVDLOW+SFmBfwxYmqIRena/3ZQiGZh/oLc
         WG+HHTuUDUZZ+LNj+1C1b6Z1oUIcMjvBBHQM0K6uXtieHh4fSdPWad/ZXd3Xbutem5oh
         QPADfTXyTc97B9v0/Lhdq3GY5Q3M1T38GjUGH3LrXxpCHBU3Ofnh7oF8HF5Vx5Vkis5k
         wnpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P9hyU5JokprboCBwCkV2LBB1oM/H1J8q5cYr7vOaMvk=;
        b=XOQ+qSIfeeqd0xhGp+/E3LjPorx9aK74YC6qncMsDqGoMaGJZzTkDqJcDbU45P0/Pr
         FmIwrQoXDsYYt8TufrSJlUWZgo7Dh3vSaDLl9gfl8ZLs0hypMgiwRotYt8J/FOv7pkzX
         +saPaVLyiFJgSsu8NxQpgwLUUpqFVV1MERA/dJ62Ju59NQXQT2AJcD2IyBnU/UCn0cPU
         EkQogpp2S6S0m0WmF3ZRq486Wjomjfl0BSzbisau0rKox7OnGkz1xEFPG0TN2bN6CEB9
         WWMKY9Eym8WODjQZOXzCsRgX++KCC9YF9J95jZr8bMPcL2LaYW+TcHg/Wfg6VI+jWpWI
         Ucsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P9hyU5JokprboCBwCkV2LBB1oM/H1J8q5cYr7vOaMvk=;
        b=YC5w5hW0XsDZaVTyiXvAZxo4ntJ28ReGXgizYePfnZ8j/UWYjtT/EqJzZu5Lvqbi4I
         leKWvHTGg5zoUxfdLBNtAQLyf4b8FNPpv91ogCebCwjDZz6hO4idptSNo5kHhVd9FHmX
         FWi9hKTH1Er2Qz3TCgvM2kbekb0XEnVOAoXBhBPjq8yItVKGx4RQNkm2SYtTtf+kRi8Z
         +dTtRkT8t6N3VSjf8GgdHe6pS6I4HKvNs1DrHnYDxuwbm+PNiy7KYaZw8Dh3/zyhNLsg
         rxMSK7uzQqBlC9+RCqdGwr6GpKXi298B59WaKq8lrJ7p+TKmJEbgaw0oaPQHGqW39jGg
         dadg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV9T43eCNZBlkWTI4NDAltOj8poVhTG6G7yeCsuYsYlRGGmIdvR
	841AlfTofSrNQkfoJSDoRB4=
X-Google-Smtp-Source: APXvYqySH3lC01j4/5NYh1Tgdn4I8ohPwP62sAkcHbCC921X7l0fKrmcDi3Tq1anIVCU5ownJJ1YEg==
X-Received: by 2002:a05:600c:2182:: with SMTP id e2mr10865764wme.104.1563982725369;
        Wed, 24 Jul 2019 08:38:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db44:: with SMTP id f4ls13977199wrj.15.gmail; Wed, 24
 Jul 2019 08:38:44 -0700 (PDT)
X-Received: by 2002:adf:ca0f:: with SMTP id o15mr7350485wrh.135.1563982724859;
        Wed, 24 Jul 2019 08:38:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563982724; cv=none;
        d=google.com; s=arc-20160816;
        b=xpLlXDL8PHIvjuCvsvyy/id079Ycca7odH3myMAf7nLigHQugbRr40iwPkG3xeDLTb
         85pgrVKT78hgrdUtsKHqSW7HD11uBnH39jEKlZdpV1EmtFaZw6M0joTC2aXwpa6xy+3W
         rk0AQ5rrMdeS36EEfzGHHBRsmB816uDYnZ6XzE9YP2ef8/HlkCU520IIgwoxsjo3YRmG
         i2FkWBr4Y0lyhwK8dzX6pkKpQ2Mp0WBQtLzovrWnQzNxNYNH2/J0EXEgp6FDATCgqoY2
         gs9+0eZ0bkzKJk679o+8oBQ5BXWdHdLSfVgMtCFF4rX1kr9zr8ui4+8b9W1nh0hlVXYo
         sGGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YvedMehgPemIhsDxpvppFcCT4c2INvzEItjhjD/enNo=;
        b=F5PR8QZOn1Q2+gYD3dXK51NzAMb+smH0s/PnVi1P2GZIEzz8qQ5+8oytAsDeEwvwyY
         0Oo9OGxar1+qJbml+t3SNlrD0VlboqwS2Qdya+rT0sLQPv6TaYyv1JgAjgW6GRW0qHcE
         Xdb/9OlYttFxC/uzcqp+Z4iu/asIeK3czXvbxUyjsZgsU89Dllj+4p/O3BpjXn6eUGeL
         YAlP7jZYReq1skpQIdAdOcqKAnDLbGQoVqEuLJUtKgS1zSkE6LOTuR9nvJnXyY84TflS
         31BMBKHsKjLe4xZqdiTAXrZKSgalhJIazJCbN/q7MQgeWeBqlTQpgQ7iFPddjfZxtVxe
         ppuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ggg6dl2Q;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id r13si2323782wrn.3.2019.07.24.08.38.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 08:38:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id v15so42283279wml.0
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jul 2019 08:38:44 -0700 (PDT)
X-Received: by 2002:a1c:3cc4:: with SMTP id j187mr71538056wma.36.1563982724483;
 Wed, 24 Jul 2019 08:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190712001708.170259-1-ndesaulniers@google.com>
 <b219cf41933b2f965572af515cf9d3119293bfba.camel@perches.com>
 <CAKwvOdkD_r2YBqRDy-uTGMG1YeRF8KokxjikR0XLkXLsdJca0g@mail.gmail.com> <da053a97d771eff0ad8db37e644108ed2fad25a3.camel@coelho.fi>
In-Reply-To: <da053a97d771eff0ad8db37e644108ed2fad25a3.camel@coelho.fi>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 24 Jul 2019 17:38:33 +0200
Message-ID: <CA+icZUVRFG5x4ycM72pjVW9Md2NMekA-phXxJya1-9+uBuxfKQ@mail.gmail.com>
Subject: Re: [PATCH -next] iwlwifi: dbg: work around clang bug by marking
 debug strings static
To: Luca Coelho <luca@coelho.fi>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Joe Perches <joe@perches.com>, 
	Kalle Valo <kvalo@codeaurora.org>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Johannes Berg <johannes.berg@intel.com>, 
	Emmanuel Grumbach <emmanuel.grumbach@intel.com>, Intel Linux Wireless <linuxwifi@intel.com>, 
	"David S. Miller" <davem@davemloft.net>, Shahar S Matityahu <shahar.s.matityahu@intel.com>, 
	Sara Sharon <sara.sharon@intel.com>, linux-wireless@vger.kernel.org, 
	netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ggg6dl2Q;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::341
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jul 16, 2019 at 11:15 PM Luca Coelho <luca@coelho.fi> wrote:
>
> On Tue, 2019-07-16 at 10:28 -0700, Nick Desaulniers wrote:
> > On Thu, Jul 11, 2019 at 7:15 PM Joe Perches <joe@perches.com> wrote:
> > > On Thu, 2019-07-11 at 17:17 -0700, Nick Desaulniers wrote:
> > > > Commit r353569 in prerelease Clang-9 is producing a linkage failure:
> > > >
> > > > ld: drivers/net/wireless/intel/iwlwifi/fw/dbg.o:
> > > > in function `_iwl_fw_dbg_apply_point':
> > > > dbg.c:(.text+0x827a): undefined reference to `__compiletime_assert_2387'
> > > >
> > > > when the following configs are enabled:
> > > > - CONFIG_IWLWIFI
> > > > - CONFIG_IWLMVM
> > > > - CONFIG_KASAN
> > > >
> > > > Work around the issue for now by marking the debug strings as `static`,
> > > > which they probably should be any ways.
> > > >
> > > > Link: https://bugs.llvm.org/show_bug.cgi?id=42580
> > > > Link: https://github.com/ClangBuiltLinux/linux/issues/580
> > > > Reported-by: Arnd Bergmann <arnd@arndb.de>
> > > > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > > ---
> > > >  drivers/net/wireless/intel/iwlwifi/fw/dbg.c | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/drivers/net/wireless/intel/iwlwifi/fw/dbg.c b/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
> > > > index e411ac98290d..f8c90ea4e9b4 100644
> > > > --- a/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
> > > > +++ b/drivers/net/wireless/intel/iwlwifi/fw/dbg.c
> > > > @@ -2438,7 +2438,7 @@ static void iwl_fw_dbg_info_apply(struct iwl_fw_runtime *fwrt,
> > > >  {
> > > >       u32 img_name_len = le32_to_cpu(dbg_info->img_name_len);
> > > >       u32 dbg_cfg_name_len = le32_to_cpu(dbg_info->dbg_cfg_name_len);
> > > > -     const char err_str[] =
> > > > +     static const char err_str[] =
> > > >               "WRT: ext=%d. Invalid %s name length %d, expected %d\n";
> > >
> > > Better still would be to use the format string directly
> > > in both locations instead of trying to deduplicate it
> > > via storing it into a separate pointer.
> > >
> > > Let the compiler/linker consolidate the format.
> > > It's smaller object code, allows format/argument verification,
> > > and is simpler for humans to understand.
> >
> > Whichever Kalle prefers, I just want my CI green again.
>
> We already changed this in a later internal patch, which will reach the
> mainline (-next) soon.  So let's skip this for now.
>

Do you have a link to your internal Git or patchwork for this?

I am interested in testing it.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVRFG5x4ycM72pjVW9Md2NMekA-phXxJya1-9%2BuBuxfKQ%40mail.gmail.com.
