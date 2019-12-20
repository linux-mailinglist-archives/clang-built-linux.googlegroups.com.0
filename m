Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCUW6TXQKGQE5UFFI5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F57B1281B1
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 18:55:24 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id x69sf8121614ill.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Dec 2019 09:55:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576864523; cv=pass;
        d=google.com; s=arc-20160816;
        b=jd/jOpEEASO9i8A5yJ9H3zcE6Jaei4FpnTWWwWvoa7eousOn5kMuEaUNCfGR16KRXy
         mmshfOWyMNcTc5WxABQiRdaeRsap+Z4bess1Zl8W1zjSKSaMmZflWkY3m1jSUq9kGwZa
         213xZsnEUTSW+k2yZQ+L1S4ZokhZAZCmSqi69Y13nMVbtSCJeql2xS7s9nDfdkHNWoHD
         8XXEaQ1GWa0b4LWmGnr+ecFslnE1J7/8Utaw7W4sKD+bKTXGecm7ifi2nXCVOpQJsA0g
         oCjcb4my2xso71dYcQFq2YuBSYbQ+zMsXjgCozbhGYNtiCDY2dWIn+okNcZ2LiTczxfY
         YjYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3OuU9sEDItNZNlFNF0aH1dF+YJ+w1joMi0hVUQNsQSQ=;
        b=SzwF2WbkJIHcj6DYBTIs/fGXISCiSS9N1vsSddQIxvSPTHcoJ/Ur0liJ85sED3LL2N
         bQVhxX7VLV28yYZRvT1FsyNORC7aO/LT7l3i3nxY31V6AOQ3l6KpXHPWFcpmx4Km4492
         nSGoB4ioYdvXi5fJar+mp/TmmsIl/cDr5I1uk5BwtYHpvwmJSQqFDTM8CmHE9kYK6siD
         N/ts5YiVDSpTuSoMofFm9mRe9fU1VRmQZrce/b+bBwPVTIsL6RzRVDsCUtbM2fYB9SDS
         mss15S+1RIjZkTN/XUDEY8klJTaEKC6pm/L8k/9LR7AlgihpmFMgHJXCf2+2lMrWK273
         qpuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ke0F3drZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3OuU9sEDItNZNlFNF0aH1dF+YJ+w1joMi0hVUQNsQSQ=;
        b=ixXQb2VxW1Aon6v2PP4JhM/XtGMu3UZiqQ6g3YwsdGuYoGI802H2e+toe2eo2Blid9
         z01UOgct+9NhSCVEWosDaccKEv3U2Xbwr3TvPEzkMbvTU01LAoOsripzugcFlaRyBTLT
         w05F2u+EGG8BuVIEXlJwPXQTDNnQe3tkNTZ/nXcWfBfccde28zZmX6C3CECq2HoJ6FFj
         F1rMiKVjdTmxb7/7XoSEG3mMa//IjBe254JmAQZS8jmK4bvmEPcTt7zrcEKVlN4Q/tt8
         iH0OieB66nlSWqd2V9n34JRXxqBZSTC1G+8OSsxqNRzaLIF+Fy6FxclirX8r0pWFJiyJ
         GYZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3OuU9sEDItNZNlFNF0aH1dF+YJ+w1joMi0hVUQNsQSQ=;
        b=mDUCiDB3HCJk9X4HtjFNZSykOiKAw9OKcRPULuqCS7IX22a5WyaOADdJvpIsza/pGv
         I891nUdZ6oeI9fqYzZ3MCSCosXK187YFvkDsI+rIsEloZ+IgZC7Ce8wsDEUlvqJAD51O
         EOWoXFhKcDi6F2solRmUFXNKrLIszHbvWJY0xV1CEIv2nD1LwcIV3+zxb+JIWbHxM5Bg
         gVasEQJ0YBgfCJYrEgmQwia0IB/CvsknVTCAngGOh9kn5vLjG75iSKQnMLsI7cM3M5Mv
         /TM6TGP7tFyqwj0mreJJRdStLebC9cYqSJPjAiS9bZQQ+Dq2ju4bcBmjYIWVflbZ5csP
         /nVw==
X-Gm-Message-State: APjAAAWLg6PbkDr+wEj8Lq5V7isEJnpOpxY4qTaD0o6dfvRQQbdu/7wg
	sMaPaxYW7KKK26C5ehbJpKI=
X-Google-Smtp-Source: APXvYqzIKT1nPSr6ECemYp77nSbxAScICva3Vxzls6D3n0QWq8fH1GB825howsKbOD0pf9+U6+t/LA==
X-Received: by 2002:a02:3090:: with SMTP id q138mr13240722jaq.23.1576864523012;
        Fri, 20 Dec 2019 09:55:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7518:: with SMTP id l24ls1301220ioh.0.gmail; Fri, 20 Dec
 2019 09:55:22 -0800 (PST)
X-Received: by 2002:a5d:9ecc:: with SMTP id a12mr11334985ioe.267.1576864522524;
        Fri, 20 Dec 2019 09:55:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1576864522; cv=none;
        d=google.com; s=arc-20160816;
        b=jW+wSDRc7ni9Tz+Lg679DlG15EqqylcZ8ctAeVJtoHsfjQdAJtkmyGsrztpRdq8WYH
         4mH5XuPOxQSnaAX4oAJK379EDxPLSZWbO3xHnoMpFVTVqCwdyTCJpSA9DmR5QHuOoiT5
         F9lh3xogrFBdjqf8y+00ZSlRuYhU4MGbm4TtU3pvxyRYsuSCttLvFYQIUUkilb7Nc4MV
         7KpcL3mQICX1z0G0pKRCSR4p6AvvEPW9135OvH6gSDKlOHLb1QXjCLTD2ykjM0EW4PPS
         l5yWg/OTXn3gwz8mbqjQVYDdShwkA2a+dTV8XU9IVA5zeMv7YDmnQKEqhGuEibnV7zJh
         oEDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xoXHEXUCOBtDITY/XcLLcf4lJLLHDCF5oZRbMuonV/U=;
        b=HP5Kx/S+mpKT5uyj1AEeF3j2cOXXw6aau0rKNukBtf29pGhsYN6XuRPcftA8fIRy92
         i1f1BuTBo922upHIxtELURY1kNPcxewiPzAQB9qh7h0q6Sio47d2IEbL3NUQMNjO+C5r
         xVhQQxdG4iHsjs9Spm2JiNFJoNACM/ZH7t6FfsM6qLUOWswnulXW/3tgd5q98mI1sPXS
         hVsaZhK1X9R9D6owY08DX0rQAdOL7vklz1AzkzQlhGJcJet1WCSHzoxkCPq0icW2Rkbn
         XVEQZ1FY2aiCfekiwhEdl3fXiDce/L3IISs0ou93rTIysJxSJ4Ea8Xr2Xz3RwfxDnk7m
         icXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ke0F3drZ;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id v82si654880ili.0.2019.12.20.09.55.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2019 09:55:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id y14so5585046pfm.13
        for <clang-built-linux@googlegroups.com>; Fri, 20 Dec 2019 09:55:22 -0800 (PST)
X-Received: by 2002:aa7:946a:: with SMTP id t10mr17562534pfq.165.1576864521638;
 Fri, 20 Dec 2019 09:55:21 -0800 (PST)
MIME-Version: 1.0
References: <20191218011545.40557-1-natechancellor@gmail.com>
In-Reply-To: <20191218011545.40557-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Dec 2019 09:55:10 -0800
Message-ID: <CAKwvOd=S6HBP5RTTgm=+1r51t9cSNt+sCHrwkK_fAVFqVcZ-1A@mail.gmail.com>
Subject: Re: [PATCH] hostap: Adjust indentation in prism2_hostapd_add_sta
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Kalle Valo <kvalo@codeaurora.org>, linux-wireless@vger.kernel.org, 
	Network Development <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ke0F3drZ;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
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

On Tue, Dec 17, 2019 at 5:15 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> ../drivers/net/wireless/intersil/hostap/hostap_ap.c:2511:3: warning:
> misleading indentation; statement is not part of the previous 'if'
> [-Wmisleading-indentation]
>         if (sta->tx_supp_rates & WLAN_RATE_5M5)
>         ^
> ../drivers/net/wireless/intersil/hostap/hostap_ap.c:2509:2: note:
> previous statement is here
>         if (sta->tx_supp_rates & WLAN_RATE_2M)
>         ^
> 1 warning generated.
>
> This warning occurs because there is a space before the tab on this
> line. Remove it so that the indentation is consistent with the Linux
> kernel coding style and clang no longer warns.
>
> Fixes: ff1d2767d5a4 ("Add HostAP wireless driver.")
> Link: https://github.com/ClangBuiltLinux/linux/issues/813
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Sorry for sending a patch for an "Obselete" driver (especially one as
> trivial as this) but it is still a warning from clang and shows up on
> all{yes,mod}config.
>
>  drivers/net/wireless/intersil/hostap/hostap_ap.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/intersil/hostap/hostap_ap.c b/drivers/net/wireless/intersil/hostap/hostap_ap.c
> index 0094b1d2b577..3ec46f48cfde 100644
> --- a/drivers/net/wireless/intersil/hostap/hostap_ap.c
> +++ b/drivers/net/wireless/intersil/hostap/hostap_ap.c
> @@ -2508,7 +2508,7 @@ static int prism2_hostapd_add_sta(struct ap_data *ap,
>                 sta->supported_rates[0] = 2;
>         if (sta->tx_supp_rates & WLAN_RATE_2M)
>                 sta->supported_rates[1] = 4;
> -       if (sta->tx_supp_rates & WLAN_RATE_5M5)
> +       if (sta->tx_supp_rates & WLAN_RATE_5M5)
>                 sta->supported_rates[2] = 11;
>         if (sta->tx_supp_rates & WLAN_RATE_11M)
>                 sta->supported_rates[3] = 22;
> --
> 2.24.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191218011545.40557-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DS6HBP5RTTgm%3D%2B1r51t9cSNt%2BsCHrwkK_fAVFqVcZ-1A%40mail.gmail.com.
