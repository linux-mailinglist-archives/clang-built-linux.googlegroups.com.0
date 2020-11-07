Return-Path: <clang-built-linux+bncBDRZHGH43YJRBOVLTH6QKGQE42EKX5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 022DF2AA32F
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 09:07:24 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id d18sf2155131qvp.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Nov 2020 00:07:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604736442; cv=pass;
        d=google.com; s=arc-20160816;
        b=YH78UW/Q/u+LAgYUyfgnI+YxSWALRTqcJhiyJgUiRPggigoHEHddhMKmDVZHODMVao
         m2F456yS2RX0hhlcFzH1MEa5e3Ci9GNUV6eMDl0zG5DnQFQTmPlcKDWMZX4ZajP4r0tB
         ACc9gXzZ5HG9Z4K3muYzEKaXoRsrsrV8oWeD14xqG9MCVwZjv8MB4OX3ig7LmxUgE1IZ
         pixB6Ybb/aE5MnSzwDjqI7iVqE1rhwmAuwaESIv8JJInzRL1M7wB2Zix1RpI6RxbeTJM
         Qjg3Tdn/gRUXD3KVaZVxXjiXt831pfX1hApIQApi/ncF4uIMX5aphrM6eHvK2CI3TFCr
         LCaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=XokX1+JZWB0EcZRDyZfh14eHDocD9Shx2Fjvpa4mPlo=;
        b=0lYS1JqQObtmwH8bt+FD/ZSq0vCq8WmFuvi0wPnsrM0cB9T59i84syNT0B4Jh36H2B
         G6pIOov70mRKONFvzroMh6BQcsHZhwUJxmY0S+csB79S/TDYWvPMva38KCdIGYctVmR7
         TTLL4PmeyIXwZktiPYMrxffXkUVdL5vWLR/viki8VB6TJ/Ep9M9IZUrEzucvGz+ipoHE
         4wzD8xnSok1I0ao++pUC+wJ2cAilMi7owY8Mx0dwGNaWZZCDpjWmE3PPY7bZ/QBK7B29
         efDTItM6WZwq0EEh3tcByfOC+8EQQz3uc9I9OczJyLXF/hykhlALoLKHfLojnnn/oVvX
         sp6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O38GIhXc;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XokX1+JZWB0EcZRDyZfh14eHDocD9Shx2Fjvpa4mPlo=;
        b=NSCUkUMqf4zUm1W40pRVljuO51lXclwqzo7b0lxqAJfiXHG1pAeLQYh0d5wK09qrXo
         UWBCaSZ3yASbf0lpAiFJoQJYJFJ0Lx8oRkvEXWqg/NYq/l7zDR6Fmlsd/NJgkmR7ICHT
         cW69lO29gmLoqgcyrB7K2huOjQy4CMhYNyEDi1Ut4HqXCMp0NyFvt30Nz6uoPvAGg7Hi
         gmRarpFaAkETgu6OrhS5DPh5L+jZF5FLsCrRI0t1BIwsh4/vCCHoL1BfIgSHnfSbTGf9
         fQ7nG8M/BWqMDGSqJxBS0fIbSpx8CwpozY4Wg0hEg0x+DHmDqn5jfM5q0S10Ze/OgEpO
         /ndQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XokX1+JZWB0EcZRDyZfh14eHDocD9Shx2Fjvpa4mPlo=;
        b=fmZVY0u04plf7+2r+f8dFU/zvf2rdVpL2wxmD9W0de3tRICTkdnzmAyoy+5tYYHpED
         utXhYQ68d4lzwogliSBcJx1nr1ukhDQXRpTsBLVyQfh/n8E0bIjgElz80nm8f8hnRVv8
         933yAcp/4obOJrhekSjohX6jjExuF+4NidNBbl3BQqwc77JDxaNSeg5lw4fnO+xUgQHM
         W1XPMMsGJdi4FOOa1Q75/hV96ijn4C/a8pa+a8+UHRc6rRhCFoK8NNfidUsBHV6N0wdW
         wPuo5BSvzn6e/V+Z58x8L0UDLC91ztNMzQP8iBcU/7BVl5noUgk5ZJUyFe6Jm0wLHt7F
         HrXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XokX1+JZWB0EcZRDyZfh14eHDocD9Shx2Fjvpa4mPlo=;
        b=Gus8o5u3CSzDxIKEvDPoVkRCbyEDhJbr34SdOW1yrlRcJLWxAOt03I+5pVFQK33G3t
         2kqhq0sxUpKR6droXZ4hPP36VBuqVFfUx3Ixrt9OQl5Wki1tlJBw5QqFNfJUfZNikwMK
         5fXFJNug2tJG8PSQZENEJh2Xfx0lCEyvwBBMK4hp7Sr8KZO2nOs2+oe8ktTSfONY56OP
         rqmvNGUw5EQzg6kP7QYztJzJMioJIFmJDkl4eVYh1WH9TfZuYze0njSMCeyNm4PiD3UB
         VCWnCepVYvTMTiz0tiNekAdi2griJS24JhLlvZiLeiMalxwMAnqljzcTm2Vre/qdnmXI
         sZsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LtC9S9nkcKamDvsg5pO5RNapnwf9Pq+obVAzdWlAyETlifnSM
	Wv0B1aDzvbtfMESf5YCL6NY=
X-Google-Smtp-Source: ABdhPJzJeiBzmMHmmltSOV96z7sE2fQdAqo/rNEIpM0lkY0BcT8e5cu4+2W0DPnm5j0qvBKylA8Ivg==
X-Received: by 2002:ac8:3417:: with SMTP id u23mr4894632qtb.80.1604736442634;
        Sat, 07 Nov 2020 00:07:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a389:: with SMTP id m131ls1763153qke.8.gmail; Sat, 07
 Nov 2020 00:07:22 -0800 (PST)
X-Received: by 2002:a05:620a:62b:: with SMTP id 11mr5361260qkv.229.1604736442221;
        Sat, 07 Nov 2020 00:07:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604736442; cv=none;
        d=google.com; s=arc-20160816;
        b=dTQkAc+MveEc5u29uHlOC+LqpCUkTtbxFGDQprPQYInX755OMZFXwjlRJRWZbpIdqi
         iK0as5BNmtj9/EVYOzhAydwoYS1FQV3RBxo8eNsqEk6IhPsGTbZgVP79SRL9owTRI01Q
         ySuQ/3QyFQSyNHy/DuyxloNS55nzd7ge+ZHMTRvKyOcu2tqS45+zGU1IGGGJdj//E74u
         /yYg29yB8kJMgjUUFjweqPpF+CfAWuVEx4UVfiuAb4CXtdxlqDkZqE1vp4E80euro561
         k90G4QGOb/GmRS8p1yqwg2xJrMFQj4dVFrbnlglITLoDl5ycFvBHvQmB7YXQaW2PVB5y
         qMng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DgNGf+RA9SoGZaRjp5OXgwLSyznHa2UUlzJCET6v8AA=;
        b=yz2I4YgZ4eRojAeQwBHFE+0LsvrBYaQ2kKEVnfNzhzDH+XUphp2qqYQYwCiWHiand8
         ML0Xce4lYYOo3+QwwsG/WRG1z0O/Wt8Thv4Qe56Ey6VEb2PkteE7pumnHjKpgyGGsVKr
         tRKDbMDiT42JHLvF4sGkI9XiTZNe1hqLJM/hJTY9c1qVlTuFYKhwuJ4RsS0bM8lXnf8a
         o3wfEAvUtLw4giWt84aYTDUKMXuriGv7YeFd0WoePuZAdTYv4GodmfI38MIu04a5oTlr
         5VQmz0uUFzZuWvb2qDVm7zDTPN5AK0w/zq1+h7aRd5AjUx/uWQhN76MIv4l+DTI+m7Nw
         +5EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O38GIhXc;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com. [2607:f8b0:4864:20::b41])
        by gmr-mx.google.com with ESMTPS id h3si103769qko.3.2020.11.07.00.07.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Nov 2020 00:07:22 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) client-ip=2607:f8b0:4864:20::b41;
Received: by mail-yb1-xb41.google.com with SMTP id f6so3296717ybr.0
        for <clang-built-linux@googlegroups.com>; Sat, 07 Nov 2020 00:07:22 -0800 (PST)
X-Received: by 2002:a25:61c5:: with SMTP id v188mr2074359ybb.422.1604736442019;
 Sat, 07 Nov 2020 00:07:22 -0800 (PST)
MIME-Version: 1.0
References: <20201107070744.1133811-1-ndesaulniers@google.com>
In-Reply-To: <20201107070744.1133811-1-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 7 Nov 2020 09:07:11 +0100
Message-ID: <CANiq72nPm5kXJVgA2HK8Uccp0ewhGUwWv-qoPaKb8sAC1ywhiA@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: enable -Wfallthrough for clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	Joe Perches <joe@perches.com>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=O38GIhXc;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Nov 7, 2020 at 8:08 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Partial revert of commit e2079e93f562 ("kbuild: Do not enable
> -Wimplicit-fallthrough for clang for now")
>
> This has been fixed up over time thanks to the addition of "fallthrough"
> pseudo-keyword in
> commit 294f69e662d1 ("compiler_attributes.h: Add 'fallthrough' pseudo
> keyword for switch/case use")

I think the title is missing the "implicit"?

Acked-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nPm5kXJVgA2HK8Uccp0ewhGUwWv-qoPaKb8sAC1ywhiA%40mail.gmail.com.
