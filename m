Return-Path: <clang-built-linux+bncBDYJPJO25UGBB46YX7ZQKGQEX5PIRUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 872B6187497
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 22:15:32 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id o18sf3434867otl.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 14:15:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584393331; cv=pass;
        d=google.com; s=arc-20160816;
        b=V4KlcRozhdcec1dO/l4EG1eMVu6CZhJpzywqslulSSbSvyAgWSOyvgcgI2UqzMPtb5
         0facCsHVaEASRWGezRE+tWPQL0Gs0d3j9FHW5bV0zIWxMymRXWCHGCPLnjgEi/6jMPE8
         xxL2CzCZM0W3N7X5fp/pK+Pyop7AcNVybl29O8zJIJS8+1eI1P9GqYd7B5gtO1uluAvU
         6TeAI9RABsBFBzhvMd2AkOmGfRUIjVWxPpiBoIIRx7FBIKKqxkRQ7dl0zQMF5jWmEwPm
         62iDY7BijvIPOyVjRsBVWjLv6M7CvEgWe/Iy58kfDmtsm7/mprqCAtSjlM4iFnkdcWse
         FiWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=7CwZzjd9WITZGxnD75KyNDb813qHaM+oaRsSc39FM1c=;
        b=CiMiC29Z/IfMvUJd+mt3lKRFlUM2JV0Q4d/PyjU1a2QZXDxXV/7dZ5eV7Csu9OXGva
         fktx1YVSb64IyUeYrx3LT4v9rkegeJmHOSrN509d4+jcVN4fUlWrCUTCdmDnHUxLHsRQ
         qhiM8n+peKtOKt6DTZRBhD+PpR1kB7G2dqR06vjusT7n+5OzgAZgxOu6EUIFyAB6yJJG
         BOBW60oh7H+zFxftnVdGSiZIe55RezIKTbWKpc2AZODI8/xgH7r57vjdKA1W6vFpMkrI
         ILWCwZlzHsqKHG8qbzM19tTvb/VyU6ZQvnFAYnp4f9vI2hGzF4bq9UORDftyrFubJKQg
         EdDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oJl+8nZd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7CwZzjd9WITZGxnD75KyNDb813qHaM+oaRsSc39FM1c=;
        b=mVEVjP/+nrMSyvdM/W/qMzv8iM6Vi+HiY2TaXrN3FQtxDmh7rmt5OrjCwDpYWzrRhc
         jmnYwdCfgCRdilHqH7LWkvXG1gws1Mh7npccf+KwXMdM6Cew78JXFNc+MegK/OLNcQ2W
         8okaVhpp1tSgdKwQwPNz3frfnKcsy1Mk47fJdH2taS3Kq9N5fqCVxTUet9YyfQryRskq
         ujkVF6YRHxFFRwjszheUdoMCVRECrOIlGmcEiJbUGoHe23xhzNqbEe71TnrlvsHMX+N2
         UUkTKhBWEJGBmefPFi5ssd5eVTDNzVwpnC0cTcRKIXWK+DfJFOqRcMiJzaLQ2CmA8adg
         JN9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7CwZzjd9WITZGxnD75KyNDb813qHaM+oaRsSc39FM1c=;
        b=J7b9mnYc60OIDN0VKGXdlrjg3zV435Pv8FRSDOlevHKrNXd/NmyNamr2QJtr/wlLvB
         5wZWcGYV6I8k0NRBB1ZmqOyMAfqJrCs3r+BR509hae4TraG8b7IXVO2y+HjAzMmhmfWG
         vtycGZArXvcMc9Th57bPuNTroubH+rW/+xOXZFNdkfzmQUVCIuyLZpCXOmu1kNfbRz+4
         iSV19FHT0cWU4R4KfnAVKcubqKMinxmJXc9wukbW1A1sMpz9jLOiIDSsRXvwqvp8NCHK
         gtEia3wJvS59cCJvsipgbLZo5lCdM+XziCcvaF9kaVJTbkNUpOvFmA4FD6uFrhBs7dzd
         Di4A==
X-Gm-Message-State: ANhLgQ1zsHJbIOCXmfkpR5tstC0gCYLUxHYjOs0YgFjGUzB9oRxWsjkQ
	QaZktf9Orf86mwPsSG6+Y3Q=
X-Google-Smtp-Source: ADFU+vuK3saUD+35ycJf50vOldMJ4cPXnsbSUQbbpEeRFn48I1aWDLjjmuFzji6lZ6UCZ2R1XZFjmg==
X-Received: by 2002:a9d:4d85:: with SMTP id u5mr1093852otk.128.1584393331460;
        Mon, 16 Mar 2020 14:15:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:787:: with SMTP id 7ls6788795oto.3.gmail; Mon, 16 Mar
 2020 14:15:31 -0700 (PDT)
X-Received: by 2002:a9d:138:: with SMTP id 53mr1014659otu.67.1584393331036;
        Mon, 16 Mar 2020 14:15:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584393331; cv=none;
        d=google.com; s=arc-20160816;
        b=HfijoV+ZoceyeVi58AsCzh5RqTPx6ujFQL/si3zaL8PVCnTrNJeCsboWfbfNSjlkw9
         Z73eXASniu8uu08WoLM3fJJ7l5WNS2MdtqiDBMmYfIG0QuwnSZX9daXlC7Op9SAV7I+g
         bI3pBkOKaDONop/eUA/MD/grE3ldcfghbkszTP2lhug49z/KFmpOWEqGdhgCQWYk/oWB
         9VcwBF6M/du0hxSsA295VwPzZNlfvweFV+NvRqt95N7amh33LvfOx+dcOHIVrW3R19FC
         Z62o6BfclmTYYeqW1i1kHdbGxh+l8iY1gxsgfAJ1V/1DpFy9rYY7Wc0S0aOqgPfIiydF
         doxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=KaK149mcvHpJfMxye3tXJbFCoSJn6xDOGuQiZnEv0Kw=;
        b=HtSketHUgYhTkzxaSfoe1xhUFJMyJdkfIQ0SESAnaGzYwD918FXFhnboO7y39W7zWT
         4rXXtp92V42JG9P+/m0Titly+FxMLOVpznYhWguM5L+9Heewq4Fs3hsWWBlcJwGZtYME
         nv8cvxMX0n4OPJILM5q6tJ/bJXD8iWei9L5vfQsGkJvaQ7/KBQDCyIXyhALkvGGBw1r1
         lJMXCtkaN7i2YFG4sMs6AX7Vcbq7bZpak2V++WcvXH2x13yhtWfXLzUkCoIQBcQWHOHa
         vG/cNhuRCSEMaMmBkDH3wm/xmgUY1HFOpU3f8pd81OanxNozgBzQiXHRvudUzJ77pueW
         gi5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oJl+8nZd;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id a63si75130oib.4.2020.03.16.14.15.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 14:15:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id f8so8566600plt.10
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 14:15:30 -0700 (PDT)
X-Received: by 2002:a17:90b:311:: with SMTP id ay17mr1531492pjb.27.1584393329930;
 Mon, 16 Mar 2020 14:15:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200130015905.18610-1-natechancellor@gmail.com> <20200211142431.243E6C433A2@smtp.codeaurora.org>
In-Reply-To: <20200211142431.243E6C433A2@smtp.codeaurora.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 14:15:17 -0700
Message-ID: <CAKwvOdkcT6jdFu2Mj5ZKErKmm+MyGAoJ=R_0LatR+_A0j7OtYw@mail.gmail.com>
Subject: Re: [PATCH] ath11k: Silence clang -Wsometimes-uninitialized in ath11k_update_per_peer_stats_from_txcompl
To: Kalle Valo <kvalo@codeaurora.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, ath11k@lists.infradead.org, 
	linux-wireless@vger.kernel.org, Network Development <netdev@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, CI Notify <ci_notify@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oJl+8nZd;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

Hi Kalle, I still see this warning in KernelCI builds of linux-next.
Is ath-next flowing into linux-next?  I just want to triple check that
this fix gets sent along.

On Tue, Feb 11, 2020 at 6:24 AM Kalle Valo <kvalo@codeaurora.org> wrote:
>
> Nathan Chancellor <natechancellor@gmail.com> wrote:
>
> > Clang warns a few times (trimmed for brevity):
> >
> > ../drivers/net/wireless/ath/ath11k/debugfs_sta.c:185:7: warning:
> > variable 'rate_idx' is used uninitialized whenever 'if' condition is
> > false [-Wsometimes-uninitialized]
> >
> > It is not wrong, rate_idx is only initialized in the first if block.
> > However, this is not necessarily an issue in practice because rate_idx
> > will only be used when initialized because
> > ath11k_accumulate_per_peer_tx_stats only uses rate_idx when flags is not
> > set to RATE_INFO_FLAGS_HE_MCS, RATE_INFO_FLAGS_VHT_MCS, or
> > RATE_INFO_FLAGS_MCS. Still, it is not good to stick uninitialized values
> > into another function so initialize it to zero to prevent any issues
> > down the line.
> >
> > Fixes: d5c65159f289 ("ath11k: driver for Qualcomm IEEE 802.11ax devices")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/832
> > Reported-by: ci_notify@linaro.org
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
>
> Patch applied to ath-next branch of ath.git, thanks.
>
> df57acc415b1 ath11k: Silence clang -Wsometimes-uninitialized in ath11k_update_per_peer_stats_from_txcompl
>
> --
> https://patchwork.kernel.org/patch/11357331/
>
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200211142431.243E6C433A2%40smtp.codeaurora.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkcT6jdFu2Mj5ZKErKmm%2BMyGAoJ%3DR_0LatR%2B_A0j7OtYw%40mail.gmail.com.
