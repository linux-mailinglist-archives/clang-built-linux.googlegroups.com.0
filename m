Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLESXL5AKGQEJXCFU3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 261F9259D8F
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 19:47:26 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id h36sf1123435pgl.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 10:47:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598982444; cv=pass;
        d=google.com; s=arc-20160816;
        b=wA/I64ijgRUTnoH5EUw5pM2sk5JqPkPassUk6BElMJLwczzkvebK585ypuy11/Ox0b
         W+8PK4kFkCJvxC94+pBlzTKRhZLRCK7uveBrNsbFLtF0mDo8VzbBWtuWm4ROZcwYyzgA
         dI1Q6ZwQewrVy2kBUyX8FzI1pSQ0ZWZXv3I0dOIVYZh+jIOHjV/G37D/0b3CsLqC/kWp
         0zeUX+MCZTm7F/+6+2bgTfJsASAZ0KyOx3ECWLgThM+NeaKYSaL6wjrA7A1cbgaY46EC
         i7F12/NbVrm0K+Yam/ldY5GdDiEPPxDXKsALASBPTJy+333evZojrB/YquC8bOLIiVVV
         AthA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=tMqSr/HH6Ts6gtTwXOjU//BmWkrzdAuu9JuSjkLWG3w=;
        b=AXwk4OZS0FN37p5WsnxfmLGUZgHH1NCDLfudMAf/ncmzFJio9mOQ44yOcRmmBEx01s
         ml/soOtNsZxvg0ArH0odkfDcskE9SfnOo6JOmRZUvOjnyAfltnil6ZxlE8DqF5UzFXgm
         RVqPqOIHecZ2/hqyVgJndg+0DF97fI4zFsf4wU7y/Ausn85p6fvrRJiwjvkTLS1syHa6
         8T6PqhvDCb4BiOt0pCDlVgSE9K3QcDIC/QJAp5S80P5Xo83oEQmKcDrVf9LmFsK7khqR
         J4WKQbo0OzhjxCY8PpP14syIvgiIAST5+XkX0hRp8p5u9iIre43VE9Hf9IibpMhiNkgw
         Toig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="XpsC/oBx";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tMqSr/HH6Ts6gtTwXOjU//BmWkrzdAuu9JuSjkLWG3w=;
        b=JSbJr2CKNNCcKFEyBIB+5N5gDlxkX4x3rV+Up/LSJ6sSGHOLuK/QxEpJ59nIrTINns
         BNPiXDs/uNa8Z0CJsBKzOvolPrwfcTN6OCXgmdi1Vrgn7/tm/5L5SHI5udZ2MZzBPyeu
         kJwU9omQCNhSGvRS+/QqShXABHimHPN9WlGawqn+TxdswQCA9HnBohuaB/XdnqGw/he4
         D8VD1w+IaL4rX7U+FO7rRQLkLsZ/gZ80OEUhrX+JeQETOBhvMeBPXciBSyr12klVsHUb
         MVYgRrYvGDFjrnwviRmhccdYTN030Qa7kVrGVdykmOxh4f54lgLGBi0qWkrjBOhPdYtN
         cnIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tMqSr/HH6Ts6gtTwXOjU//BmWkrzdAuu9JuSjkLWG3w=;
        b=lLMV1+s2z3NnAoTpTsqAEoGDrfuJBgLcfFLEWWYcprR4UXHC9wTJadHOwqgS+BfQBi
         b36bsx9/Ub6xaRP66i4tfUBOTbejcGXKHUV1alpW3LNYsUwqjLBeBz9DIp2YiqHts1ry
         Pyo0+eg6Rwi3WfM3nrIBoVUQnhALdw06n/5qGxrKNI85RUxhU4H6SfU63W3n2YIwCeiN
         nglkGmNUJs5OgQcNhkwcwf6SobkC7adpoNcriTLEfkfJeYmeLZypIVQrFM60RuAOl8JB
         sWtN+IdEcbOFUhJDJxqyRFubbJMxa9B/BekdU0uVE9pKsSdFTHrKjL/QHBUmCT9Mi1NT
         K1jw==
X-Gm-Message-State: AOAM531YoBrxk9tLn5MrdqD883Ep36hX41piwtCeGPvK5sp7U4WkVBN2
	eoJaafu0GXf3D58OpvLGmdg=
X-Google-Smtp-Source: ABdhPJxbP16v5JZke2JnJY4j00S3V8mJLFlgkhIu0pMwTmExnhAm+E28QT9so0xLBjgJEbsMh0zA1w==
X-Received: by 2002:a63:1521:: with SMTP id v33mr2512229pgl.374.1598982444684;
        Tue, 01 Sep 2020 10:47:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:96d9:: with SMTP id h25ls874307pfq.0.gmail; Tue, 01 Sep
 2020 10:47:24 -0700 (PDT)
X-Received: by 2002:a63:342:: with SMTP id 63mr2550191pgd.134.1598982444259;
        Tue, 01 Sep 2020 10:47:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598982444; cv=none;
        d=google.com; s=arc-20160816;
        b=ISnm3KtP5ThMQ0BnYovxMPYfALUZznEvn2ESI2fDBp247wQ8sGf77NB7kQax/hC3f8
         l+YH+vT/GV05k79yKGP/v4Xx1bXgzJo7deFwuPqj85iauz5Yhs6Rtsb2SUk3c93qcGdJ
         2+2DR+FmP4D4iTLZzc5F5zjR+//eFp824GMbDLFebKQKhoT6CDF378cc75AUoKR4P72F
         CW7vmc1exst+kvzzIp+HLOqC/mKtMsIiwId9Ptn0YhCf9UbH6l6DKvXl6Z0K32aX3EOr
         Lys/fBWZvhJNN8zp5J7ofE1l3ntKqcpvMxtMs65Si0ygAW2a5EEK9+TBeCRVwRJHL7VH
         4G5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IsThTySUC2LXoDe5C5uelfQGGzR8IIc/eah+C0Q213A=;
        b=tLi2J86V0MOQut6le8hdzw5MA3004qNbH5FKlGtIpU6ffbVOrufGxTsxDoeYCvwbzq
         7UcYwwVW0FyB7Ns4fWVMuXK9s6DL97NM4DPRDaa/3caK6GtPxigohVvKjPRa7imBE3bd
         Zu7Y2/9Y6qtwxTOmIJbgsuorq2g1mqKHBKrHzaFur0PJS/8luDDekBtP/HSMJU6stB9o
         UkJuMi0XQp+rHR4bsSH+hKXT1dCi/eh6pae/Bualle6OfzajCNMSu8TzCxD++rfp/+xX
         QVIMvzCung2weLhip+ho2jGmFbqwOMrt0AKVooCKI57BUxrOIF2+YmBHyosy5T0gWr7o
         9Gng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="XpsC/oBx";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id y204si142253pfc.3.2020.09.01.10.47.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 10:47:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id nv17so991224pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 10:47:24 -0700 (PDT)
X-Received: by 2002:a17:902:9a45:: with SMTP id x5mr2304256plv.208.1598982443692;
 Tue, 01 Sep 2020 10:47:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200901070834.1015754-1-natechancellor@gmail.com>
In-Reply-To: <20200901070834.1015754-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Sep 2020 10:47:12 -0700
Message-ID: <CAKwvOdnrg0-s64kPCv4+kyFrxmJPXmYm66QbjrROkTr6OVTUYA@mail.gmail.com>
Subject: Re: [PATCH] mwifiex: Remove unnecessary braces from HostCmd_SET_SEQ_NO_BSS_INFO
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Amitkumar Karwar <amitkarwar@gmail.com>, Ganapathi Bhat <ganapathi.bhat@nxp.com>, 
	Xinming Hu <huxinming820@gmail.com>, Kalle Valo <kvalo@codeaurora.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Andy Lavr <andy.lavr@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="XpsC/oBx";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1041
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

On Tue, Sep 1, 2020 at 12:08 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> A new warning in clang points out when macro expansion might result in a
> GNU C statement expression. There is an instance of this in the mwifiex
> driver:
>
> drivers/net/wireless/marvell/mwifiex/cmdevt.c:217:34: warning: '}' and
> ')' tokens terminating statement expression appear in different macro
> expansion contexts [-Wcompound-token-split-by-macro]
>         host_cmd->seq_num = cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
>                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/wireless/marvell/mwifiex/fw.h:519:46: note: expanded from
> macro 'HostCmd_SET_SEQ_NO_BSS_INFO'
>         (((type) & 0x000f) << 12);                  }
>                                                     ^
>
> This does not appear to be a real issue. Removing the braces and
> replacing them with parentheses will fix the warning and not change the
> meaning of the code.
>
> Fixes: 5e6e3a92b9a4 ("wireless: mwifiex: initial commit for Marvell mwifiex driver")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1146
> Reported-by: Andy Lavr <andy.lavr@gmail.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Wow, that's tricky. The unnecessary extra parens mix with the extra
curly braces to form a GNU C statement expression.  Thanks for the
patch.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/net/wireless/marvell/mwifiex/cmdevt.c | 4 ++--
>  drivers/net/wireless/marvell/mwifiex/fw.h     | 8 ++++----
>  2 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/net/wireless/marvell/mwifiex/cmdevt.c b/drivers/net/wireless/marvell/mwifiex/cmdevt.c
> index d068b9075c32..3a11342a6bde 100644
> --- a/drivers/net/wireless/marvell/mwifiex/cmdevt.c
> +++ b/drivers/net/wireless/marvell/mwifiex/cmdevt.c
> @@ -322,9 +322,9 @@ static int mwifiex_dnld_sleep_confirm_cmd(struct mwifiex_adapter *adapter)
>
>         adapter->seq_num++;
>         sleep_cfm_buf->seq_num =
> -               cpu_to_le16((HostCmd_SET_SEQ_NO_BSS_INFO
> +               cpu_to_le16(HostCmd_SET_SEQ_NO_BSS_INFO
>                                         (adapter->seq_num, priv->bss_num,
> -                                        priv->bss_type)));
> +                                        priv->bss_type));
>
>         mwifiex_dbg(adapter, CMD,
>                     "cmd: DNLD_CMD: %#x, act %#x, len %d, seqno %#x\n",
> diff --git a/drivers/net/wireless/marvell/mwifiex/fw.h b/drivers/net/wireless/marvell/mwifiex/fw.h
> index 8047e307892e..1f02c5058aed 100644
> --- a/drivers/net/wireless/marvell/mwifiex/fw.h
> +++ b/drivers/net/wireless/marvell/mwifiex/fw.h
> @@ -513,10 +513,10 @@ enum mwifiex_channel_flags {
>
>  #define RF_ANTENNA_AUTO                 0xFFFF
>
> -#define HostCmd_SET_SEQ_NO_BSS_INFO(seq, num, type) {   \
> -       (((seq) & 0x00ff) |                             \
> -        (((num) & 0x000f) << 8)) |                     \
> -       (((type) & 0x000f) << 12);                  }
> +#define HostCmd_SET_SEQ_NO_BSS_INFO(seq, num, type) \
> +       ((((seq) & 0x00ff) |                        \
> +        (((num) & 0x000f) << 8)) |                 \
> +       (((type) & 0x000f) << 12))
>
>  #define HostCmd_GET_SEQ_NO(seq)       \
>         ((seq) & HostCmd_SEQ_NUM_MASK)
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnrg0-s64kPCv4%2BkyFrxmJPXmYm66QbjrROkTr6OVTUYA%40mail.gmail.com.
