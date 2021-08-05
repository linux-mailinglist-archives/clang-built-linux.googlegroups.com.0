Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXECWGEAMGQEMLB4ZUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 398D43E1CFA
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 21:51:57 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id e4-20020a05651c0904b029018bc821fd31sf1382269ljq.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 12:51:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628193116; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y/Ntxa+BZZ3Fz+2gdC1uB99YzIFN/DcwPAAYJpBeXa8lkmpxTZMMe3u71ra5/BE5BR
         j6TFyQN4APA63S3wieA5PnUrgzhO40TCNxtpoy+ndBOd0lTe9plPNJK8hAicRJtCtWeg
         hUp41Un6laOlmX93OVLXGOZEhr7hK/QPW/htfogswoyXz5/4WTqIGSor42vOydVfiWZa
         EEtPEG94feYh2tAxPCoxP4+D3h/76uaIFEV7jRSP34kmYtI9OQgXpzocvWbRz1kvyB8T
         Sh1cHk3tA7k8tPK25tRKO4LIG4BOPqYbLtU5m9jq0JckQXQFlz+xARiqZ92eNWdEUHUl
         uTew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=V7WMNSwe5fKl8mrAprFQ+EPbXrYnJEPZZKW0xkRXo9o=;
        b=dX9aRzGjlVw5qoQOw6jLuCCbZEqEQWf0o2DdMugmFDNwwwj14N7Rbrcdjr2hnfOsPx
         /Hjae0raf4mUzv7urOLI6jWX8Ls1tgURozycWE4cZJ0ujwSHLisEmQR7PKdUOKVCSdNy
         PjiIzRTfDzbv1mMb54iufeS1zpf31eFM8/7S7itzqH56DKg8VkaN3c/HVO5xdNghCa7a
         M82RGU2eySA3nqStgsTfP02KjullG8lqhU/aaYqH4GzY7+z3lZ0OGk/y+fU3CFZJEfBj
         IHaJnbfz0vc0vhKpfbUG8xB+dcod4kIKhbMFsTTfIXu/eUk3+Dv6vZ67ht90Ea52dI1O
         GmXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sF9eufAN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V7WMNSwe5fKl8mrAprFQ+EPbXrYnJEPZZKW0xkRXo9o=;
        b=SycDhHGO5UN7TvuJjLj4BU3d4az8rPf1yhSwTJKS7HJVKhRZ7oEgBKQ4l195NYsxmz
         xeYlWEXZnBi6pr+tjXP0NMQxLsYeDQgB1F9DNSqGc4l0toSKtZ4fWu6gfLiKKCzP6kl6
         JsXXhcovzNNzXpaWjd6uvfI6eqmF3S/x85mlh+TS5ATujG7fShTy19hBTinKH5WoJZq7
         yEfg2lFxV8/WiaBBoBUPbx5m7KNKfsTHqFZ0u2/iuWhi8e9RS9GJww7IVD1nHchXd92T
         kO/JXFN1R36AzMHgqE52xKXAq9oIlvt+Q/ZgBrc518cdFWH11DOkIJr6DCfP7PCM9GMJ
         J2hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V7WMNSwe5fKl8mrAprFQ+EPbXrYnJEPZZKW0xkRXo9o=;
        b=iqiz22VYdjjYXX1O9URRWNRls8jTlvKMHgvBEaG8uPcjVLJjOMhOipLxWRUxEUQXod
         G51BhsXJbDkTUDu7DtapI4Ab1+S75Gl9reaAW0FCxWXVW2B5wZDonI6zVwLklFy+IWBm
         fFk4oF1v6qaQNbPECrj1GTVcSjmzTyzn21B0tTlcJ0ZO/UYVPZ9Rosz4k2JK9W/dD6jI
         EkvVWqmSGEuNFUPtghBRoJSEItETcKrbpNGwqyg99EiT0M782mB8hWJFDMT6OHG0xXpe
         qSGL5VitrVXRa8BZynEYZ7HZEWkUHYlnmNh8KPl0whP5kEOTDRHjbZ0kE6BwhP0LOdBr
         dRcQ==
X-Gm-Message-State: AOAM531i2GKq9fh1IJCX2/Ml2Jw//rt01C2R+TEct3eYDHYxwrSl8zOF
	Au9DQxllxMfKydVpBlYJSUc=
X-Google-Smtp-Source: ABdhPJzJywfLmsTdLWq+m+ZGXudGfN4Kp7mZotedviNRUi9Fu/PYhRyJX9nQy/N+N7nTwfbEx1sZ8w==
X-Received: by 2002:a05:651c:38e:: with SMTP id e14mr4046432ljp.453.1628193116719;
        Thu, 05 Aug 2021 12:51:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4146:: with SMTP id c6ls5123952lfi.2.gmail; Thu, 05 Aug
 2021 12:51:55 -0700 (PDT)
X-Received: by 2002:a05:6512:3da6:: with SMTP id k38mr5004306lfv.474.1628193115717;
        Thu, 05 Aug 2021 12:51:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628193115; cv=none;
        d=google.com; s=arc-20160816;
        b=PRCkc8GLpke7mUjLlcq1OMkYdp+nD30bqK4xNZjmtL0I4Sb+kuXrUnIOL5n0Rhs1Aj
         btBgSlBpLXFPi5S9HYCs6CpA4xIw8HHTdnUB2Kwu78Xu08fJo/aBX9ArBQ3jCU56Xmlx
         o6GIugST0ymljgGCd51k0ZUhZhQeZTC+wbY8ziYk4523ZgLfm42w770w9DwhsDL6IC/6
         uPtdAOXg1y7saibq0KsGeREHESelgGtUAz9oxOEIcOe9a2uL/JHoa311JT+mZY3uFkHe
         lsBt8piBF1iU0OYIfPbwPcEbXKL1en1fvqjG4Zv5Q0TY2q5+/KMrjdnoixXwNbp62ukX
         WTiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CH/S1vxA5I8GeZeVb6jLgVXcxKJTGgioM4LVcjLmIww=;
        b=1KI8FVWN0IbEUiv/XdIubtoA6ePcOGF2ubDxOXpo1IRhFeTcsZ2zAdKc9ZawnAT1js
         Q/qJVk32oGAtvZ+bOj02+z8tMhm6GQBz1Jt3xsV7r+mCLfvj7J6zWsfGlRyN7hnYzsBm
         o3iCSIz7eIUh0+5YZD6vliSTAM06jqQ1vajsgfIlZPBApXTHUGtAElB4SEInXHqqYvGj
         u7FjT8niYuKG8i5i6h4SctkhRIgJPby9pTRGVwOhvjJ9LRTqufxcZ2FHJxlaxDuTEP+9
         gsobs1WC0MvVPFm/2K0SvtRhjLV+G/6Ngtzzqyxy8rcIgvdJQFLJTiVI/ulfyvacL00Y
         Mxnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sF9eufAN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id u9si279920lfs.9.2021.08.05.12.51.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Aug 2021 12:51:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id l4so8664770ljq.4
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 12:51:55 -0700 (PDT)
X-Received: by 2002:a2e:a911:: with SMTP id j17mr4145550ljq.341.1628193115272;
 Thu, 05 Aug 2021 12:51:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210803223609.1627280-1-nathan@kernel.org> <20210805185807.3296077-1-nathan@kernel.org>
 <20210805185807.3296077-4-nathan@kernel.org>
In-Reply-To: <20210805185807.3296077-4-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 5 Aug 2021 12:51:44 -0700
Message-ID: <CAKwvOdkvtB0mimF-3c+jfOPrSGwWp98RZCK5+v3LGT3ZrajbaA@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] staging: r8188eu: Remove pointless NULL check in rtw_check_join_candidate()
To: Nathan Chancellor <nathan@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Phillip Potter <phil@philpotter.co.uk>, 
	Larry Finger <Larry.Finger@lwfinger.net>, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sF9eufAN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b
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

On Thu, Aug 5, 2021 at 11:58 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Clang warns:
>
> drivers/staging/r8188eu/core/rtw_mlme.c:1629:28: warning: address of
> array 'pmlmepriv->assoc_ssid.Ssid' will always evaluate to 'true'
> [-Wpointer-bool-conversion]
>         if (pmlmepriv->assoc_ssid.Ssid && pmlmepriv->assoc_ssid.SsidLength) {
>             ~~~~~~~~~~~~~~~~~~~~~~^~~~ ~~
> 1 warning generated.
>
> Ssid is an array not at the beginning of a struct so its address cannot
> be NULL so remove the check.
>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/staging/r8188eu/core/rtw_mlme.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/r8188eu/core/rtw_mlme.c b/drivers/staging/r8188eu/core/rtw_mlme.c
> index e3d5a721d25c..95b952871e67 100644
> --- a/drivers/staging/r8188eu/core/rtw_mlme.c
> +++ b/drivers/staging/r8188eu/core/rtw_mlme.c
> @@ -1622,7 +1622,7 @@ static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
>         }
>
>         /* check ssid, if needed */
> -       if (pmlmepriv->assoc_ssid.Ssid && pmlmepriv->assoc_ssid.SsidLength) {
> +       if (pmlmepriv->assoc_ssid.SsidLength) {

Perhaps they meant to check `pmlmepriv->assoc_ssid.Ssid[0]` but the
length should probably reflect that anyways.

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>                 if (competitor->network.Ssid.SsidLength != pmlmepriv->assoc_ssid.SsidLength ||
>                     memcmp(competitor->network.Ssid.Ssid, pmlmepriv->assoc_ssid.Ssid, pmlmepriv->assoc_ssid.SsidLength))
>                         goto exit;
> --
> 2.33.0.rc0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkvtB0mimF-3c%2BjfOPrSGwWp98RZCK5%2Bv3LGT3ZrajbaA%40mail.gmail.com.
