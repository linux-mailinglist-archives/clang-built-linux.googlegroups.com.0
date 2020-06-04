Return-Path: <clang-built-linux+bncBDYJPJO25UGBBFNN4X3AKGQEXF6U52A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8534E1EEBA8
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 22:16:22 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id l204sf4308617ioa.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 13:16:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591301781; cv=pass;
        d=google.com; s=arc-20160816;
        b=HCqlO33kYgcOC+rPLeCydIF5WvW/m3RAmAPDLfqPQLsB3OPIAZVObdwLtU3IX10CWJ
         zL0d9OFqfm5BK1yhON1QRGYiPSE7jX4t/lu30fJwZ2vbaEn+ZUvJKBl9HjiRdHMyVRO8
         K5ydahW1y094/fTGHf7tnoPkAQM77y34M5Hf2YMJkZVMiy6Q8XqYfh++/nak0BokryEF
         s6QUf0F2uSqT1AxUMK4I3S0qHEA+UdtfBYSMjsvAdHCsb1ZunsgRBhWgUTNzdnZZWUGJ
         yZovmZZ74H8xqfbBc4FV9ZfL2xugWaw8sO4E60g79r1NoP+HLP4hoWoJTGMENTwvkrHo
         yQLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2t5ENiBFVa+a2VcMsY3N/BPPNNVk1ZjDQmnvEtZ/WrM=;
        b=ryrxbtkNeS1rHFASvSFcWnvUqybuj6m3zedPcZkzcD1u7EkTWYQMLC3ifGwFznIoGs
         ML0t0t6aT7gioau1NKwbu5yDxa3YyrcsWKTnyyaLMFP8IAf3hM+rAvelp4GQjhF0Rm+a
         SQVJAe125wFdgc2zNAbKJBxbWv6pspkrzAMu6Lx53CJwNkgwuo5vAlTGeu+GTe/tAGk6
         ckryjplHkF6GACSzjG+4URR47V3G34SUF2f8JS90Ke1rI+S9Ts3okX2rZ+7YYugMLEq5
         bEOCsqyiO27YgOwI1/gvHjZi7bBxm9MdUEYQXp1K1yV7LziOuVxA+5enCQN2BkaEqzqp
         Nt6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ul9IqQ41;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2t5ENiBFVa+a2VcMsY3N/BPPNNVk1ZjDQmnvEtZ/WrM=;
        b=QaZckT/wM3fp84701EOytY96YLs1eEGXJBOnZOy73hS+rfXmlPNqeTUUEKznsmYF2S
         4kTCTHHQg2iwEiN05aWGg57eHYTEwtozJxd3c5L2qixYm60SNhkJMnrvNIdBbSjQNH3y
         k5UP3PBSeAMCplbb4N3hGRzx5/WOpcR3FQwr7oVo5nnjoifp+XKI4pE66KIULYmkdDjc
         AoI+iPK6vW3nMD0IUtb+pEzomOCfOXXkamgFTzAwLTB8x7ZLuunABfRl7SsE3vcz32F0
         tVrm8xRIilEjEGFSnYKY/tHh0j+kfs2uQnRJyfJHGW37gqpWrXULv0L05uCc/yszCakm
         4IYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2t5ENiBFVa+a2VcMsY3N/BPPNNVk1ZjDQmnvEtZ/WrM=;
        b=DADQlqNAxrE4FMgO6U5zI1u9dEbP1icwjGJeKF33ppfIS8dd7tyakK39EyFbDNRcW3
         Gd8ex89LJQ/kFrlw+w5fktRNM3YC9kxEILHaU0pV4EyOyGA09pq44PlPVRdCN+nhCTM1
         fQot6qig5sxPuKoMN9k6VZ2PQi3/8mopm1vgipHgjs46mBp0CLqizRbVPEN04PKNiNGr
         04cgutMVvGjS1sdIkO8dCa8qwWRKKca1t2JRRyO/LnPzpUCXoJxG6MxLcw0hy7HLIueN
         k6qEtEL2K9VyCk3Se8Mf6buzKuGOJOIeL1ToQeDDd1fRhOp8NgR2dVWOZrQ18TCIPHjp
         zpOg==
X-Gm-Message-State: AOAM531YEtUEYEsgatJ+MP21FeImJ613YuCZWq3AqfgyqEMPrHLVb1G7
	4Bng9wYZD+h+2T6cRVUthu0=
X-Google-Smtp-Source: ABdhPJw1WHsDLUZTKLiNLU5LpwKNcEbCQ6lSAQp9xpadl3J+iRD6aWwrFWda90MBrBWf1rjAcXBw5A==
X-Received: by 2002:a92:dacf:: with SMTP id o15mr5246886ilq.36.1591301781522;
        Thu, 04 Jun 2020 13:16:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:e216:: with SMTP id z22ls1148985ioc.5.gmail; Thu, 04 Jun
 2020 13:16:21 -0700 (PDT)
X-Received: by 2002:a5d:8ac8:: with SMTP id e8mr5673855iot.152.1591301781081;
        Thu, 04 Jun 2020 13:16:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591301781; cv=none;
        d=google.com; s=arc-20160816;
        b=m88KbJbz9a54l5dmHV3Q+OJEsMS8NPS2a7F1z22/JDTKGIVxShS3PaNBqhvkvEKM7c
         E60u8XiRM+vQL1kaThV4UVCfnCJuEWBpPh0e26dKi9HLwZDf9Ft3GHXSHTmeKXnRwp5R
         uyYtUUlVHaOpLjTC1/Od9kfzBLXAbsFg+PfLllHYTrCvhgPlz1iFJCzlTtSNVa7eEPAZ
         JdHgPnZAphVuTiC4MT6Np43HjVNelyI1W8lPKj0XaFqm8uBmA9pH1Ev41oMZllxoGDEm
         bWyvMfqWKyFeF3Uy9MnpZP7e4qR7h5AvenVOPfJYQeyBVQrx1riNc84JTtslfF/NVNIE
         N2pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pCXmYsl76J0CAlxoPdk8mPZO/WOJwZ5J1IK/xTYSvtY=;
        b=kjabRzPKG3tsueBFvgwUv1Qwg/+hCXvzccseJANI29+J9PLyIK3mD+SdA8iLwKPP6Z
         e7a7GRlsjT8HuQ7NAgimYq0IQq47VJeZ1jq6GrlDHMCX8wD+9KrKYTwIHL1rHyBDVw+p
         slgy8B8fpUHjUfWJrkBotTislWQAPuMbib3cF0NuQYhn98o5kbhkyeu2k54Z/0v00Npm
         TfLfNWhRWkhOv5kSPfGzOkQ55maRAF3uzQC2yWMJ+4HLnHrARrwjRJ8QL+OSj1+EvOHL
         781xMw0IJGRIS+DLXt3c1pweBiJ30Jcx5+N1NDDlttDx2g459lzjsL1+DOVzkKuQMzMP
         M1PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ul9IqQ41;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id v16si163856ilj.1.2020.06.04.13.16.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 13:16:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id m1so4057035pgk.1
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 13:16:21 -0700 (PDT)
X-Received: by 2002:a63:4f09:: with SMTP id d9mr5970154pgb.10.1591301780211;
 Thu, 04 Jun 2020 13:16:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org> <20200603233203.1695403-5-keescook@chromium.org>
In-Reply-To: <20200603233203.1695403-5-keescook@chromium.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Jun 2020 13:16:08 -0700
Message-ID: <CAKwvOdnd30bcqoNXF1ugadU=KbW3aXu07+T-891amO2_b7kQdg@mail.gmail.com>
Subject: Re: [PATCH 04/10] rtlwifi: rtl8192cu: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, linux-ide@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, 
	Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ul9IqQ41;       spf=pass
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

On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
>
> Using uninitialized_var() is dangerous as it papers over real bugs[1]
> (or can in the future), and suppresses unrelated compiler warnings (e.g.
> "unused variable"). If the compiler thinks it is uninitialized, either
> simply initialize the variable or make compiler changes. As a precursor
> to removing[2] this[3] macro[4], just initialize this variable to NULL,
> and avoid sending garbage by returning.
>
> [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Fixes: dc0313f46664 ("rtlwifi: rtl8192cu: Add routine hw")

> ---
>  drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c b/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c
> index f070f25bb735..5b071b70bc08 100644
> --- a/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c
> +++ b/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/hw.c
> @@ -592,7 +592,7 @@ static void _rtl92cu_init_chipn_one_out_ep_priority(struct ieee80211_hw *hw,
>                                                     bool wmm_enable,
>                                                     u8 queue_sel)
>  {
> -       u16 uninitialized_var(value);
> +       u16 value;
>
>         switch (queue_sel) {
>         case TX_SELE_HQ:
> @@ -606,7 +606,7 @@ static void _rtl92cu_init_chipn_one_out_ep_priority(struct ieee80211_hw *hw,
>                 break;
>         default:
>                 WARN_ON(1); /* Shall not reach here! */
> -               break;
> +               return;
>         }
>         _rtl92c_init_chipn_reg_priority(hw, value, value, value, value,
>                                         value, value);

Whew! Nothing like passing the same value 6 times! (Other callers do
use distinct values though, just curious seeing this instance.)

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnd30bcqoNXF1ugadU%3DKbW3aXu07%2BT-891amO2_b7kQdg%40mail.gmail.com.
