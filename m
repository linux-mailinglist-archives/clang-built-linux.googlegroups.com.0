Return-Path: <clang-built-linux+bncBDRZHGH43YJRB5XGZH6AKGQEZ4JJG7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id DD921296981
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 08:08:55 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id y7sf271676pff.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 23:08:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603433334; cv=pass;
        d=google.com; s=arc-20160816;
        b=VH0ZMt3obVCJ/FOyEC/lfLSjzSc4GraAXwR0rlLPo8ktYPNP4f0E1IfrUiLdvq2r5C
         MpkEqfeE7hKZ5+k8YEGrlf0C1L6bAXtvKLE+mmeKca+4dr8bX2+cv5dKYdx26/Tu5/0Y
         TbrvrBAMweA7WYt2N/betH+SYhe0ucPr/v+LWPVKjR5Kh9HgoEGeCdRj43P2voFGj5SA
         PIQqcLk+PK24jMTybZImvjB5gvU56MfmwJKSlzyMlHG6Ii+GUxWRvxw0wqNReSovJ2eS
         UKud92LBMNzAV80AVjt6jou/XLudEPjc8VSU925GkzsuVpsDS/yaDxkKI8qlHWBYdR/0
         7YgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=GAkvkf5snPiRKo3Xp/MNpm2KeF+I659XokN88Rwkfe8=;
        b=UOtXaCDhukCFEKpr9XrStIRZ8a1Jeobl8lLehV8t6nxEy/ullyPLo2GmmibN5wTzI/
         hYoJq/h6Qxyq4MUobNcD1vUkDB8W+sjU3bETvC8vGl53I6WeHueaUN2jBOIlwJSN6d1O
         xOfpYQZ2k5YPrjiSkU7endhZ9zXX0hXVqFq376mSowYAuQnnyP+4xU3AxymDFDILbhqb
         SePSsphI5kKBbQtSDlP8P8VwZXyRFEBEJgZDQtRneZFPzz8h18LaOPnTdbUC0y3HQAPR
         BqyVAmeKkcIhhU5Q0mu5v0KBzVy3E8/lCm6DY6rQxumvIKmAjYlW85klTVBRv7ZY6rvN
         hbfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WB6pavCA;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GAkvkf5snPiRKo3Xp/MNpm2KeF+I659XokN88Rwkfe8=;
        b=dDaCJVRlP7WtcxE1qYytgAC961EQjg0OrLsHOAGmhpjtjibWTqAGTXPRI7YDKpf/33
         JugwVJUP2m4s65huf2pRWJX3P+cYAYnq1wLOnEK3pYm5LkeeppEkf168Wa//vph7Xzk0
         Mw/eljGcuWMLKRIYKaRcHjavEceDlR29LKxx3ZsnsbLU+gcu+ZmTkUw7oKlMWe1KXi6I
         x9CF4rXiINMd6nzQ40mkmQb6UKQYlPBOtb6ZzJROFyrCN1thX+IuiKZ/nZBaZ+6ffkxJ
         lvHuLs5nk49lbBZCy18FY217YSp9IQ7DALWYxrtIQxtAFlv/sbhWvdNzYyIYT4D2Yfwk
         aphw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GAkvkf5snPiRKo3Xp/MNpm2KeF+I659XokN88Rwkfe8=;
        b=ZTI+FMmh1oO4znDN9J0E2yAtXf1J6OA1O3/GDt75RMOUV5uKT5qLgw6244OAUZIZhM
         iVQptcuazG4pwnkoNOWB9e9rpNBXI6Wv0pveMqDUgWVT84XQJ6wWDUfJdP+4fD5e/cTD
         JZjKWkZIg6nn4CMgdbqGwBMR6jgRQWttArQmVv+MhaIl/Y7c6g1LZOdTLTtzAY5Nta2Y
         b1TkFFepof+Ad+wdnZS7oj/g5jeHgAzlLZHitwJuKA4bZjKqJLNCYLnc+X6AXOGniJ/U
         OE1Tb4pwXSBJYUH0NvAuW7gS7qgOV96CQmE3LNK1YeRdOIGIAIJ3WhVLINQAXsB27WyV
         8lnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GAkvkf5snPiRKo3Xp/MNpm2KeF+I659XokN88Rwkfe8=;
        b=GGao7uHS1UCgaOuv8ZCjTto/vEdTyibT0WlpqKSmZ+oAuxlksFXh7uEa236ZbTD23N
         0IlevxWYKIj+bWvv3a+CZkVxIoHjnOv+x64z2o4fN2k924ddcKHG25UhZ8R+N0S5gK00
         o4+ZO2Q7PseaHWeB1cKV7SvlFtAOqkyiRGPVTBj+KVpmOgB+2y9xN2IvrRnh1bPY2mHW
         euLH6SwY4LLuTTGnQWXf33XeVbJlMnTrMPMp6BHjDdeVbQnDa+9acE6iGHo3fkLAuR5i
         Fs2eSL46H/3NDVO+iWQH0DJN6ffd6GJWU3g7Y26yG4U0NiHJUubPv286J68Z/4CQdMum
         gQoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dCyOrT4EWHRPHrhEEl5Zn3h+P51bUIgq4pYl0v5iRJuWGNJDr
	BEME+npjKVhR1TNjCKkvQD8=
X-Google-Smtp-Source: ABdhPJwnN9VEzow9V560xfFP7Z9oNaCxpjx7zrX1i2uRXfpKOUVXfMjt+GwSg8j2kHi5Pb95G3Lwcw==
X-Received: by 2002:a62:144d:0:b029:157:7e01:94a5 with SMTP id 74-20020a62144d0000b02901577e0194a5mr772830pfu.56.1603433334427;
        Thu, 22 Oct 2020 23:08:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4416:: with SMTP id r22ls167516pga.1.gmail; Thu, 22 Oct
 2020 23:08:53 -0700 (PDT)
X-Received: by 2002:aa7:864a:0:b029:158:e6ba:5548 with SMTP id a10-20020aa7864a0000b0290158e6ba5548mr771997pfo.1.1603433333817;
        Thu, 22 Oct 2020 23:08:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603433333; cv=none;
        d=google.com; s=arc-20160816;
        b=lD7rCMqjz54FdOhwigtplpvIwP1uriDFRa+i2D6nY5Cpmwv6SisdjgFGCfTqQ3ogTi
         DPg8lxHW2vKetV8xKm0rRMkhtrkDE11TuI+5aT2grMrirjzpsIyVvzo98PleqcoiBEAn
         lNS2nLYDpPG0cugSY+A/sse8aRwRWZSXwhK7rkMZHpb7+DbRcQCOb89mYNMUUQr8vdRn
         BGwu+Vj1IMNwmyXOQIoxCR0nDyHywGjdfvvMJ7jt8csjMqFDWnESD46Z1296ljHoh1ST
         uFOWDCmxZaGDaiFVKEPghX/PfXVbmk3bbIH08dAEtaJl18TCQJKIgQMWTKprWZLzxW8I
         z1tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XNjwNm9fr6MOiHhV0c7B5b4MJGULWGcLuUm+GanGsBU=;
        b=CBEdQ4eHW2orVk10eYqm1TlF+eWraQrK0VC9pEs0Z8YL3uDWOv04gB8ij81VHhiSEB
         JnQe3QkwTynykY3imrRwCyc6GrZh0jBQn+QrjKgn2NeVA24UGQy28KllCIvF9jTXm2ZF
         OA6SdOOqORpEev7QlXLSARgoNGQ0Pk8wt0SRez6LLregJkoYBbCm5+Xv/GRTVuMXfvG/
         Lu/kXGM9B8rgizO48gyI+GpmA63aNy7Rxi2oPbR9lm4E4w1mIQVdvR6nfuMkY8MQipYW
         lKgeZwOj6l7B2rt5YcYVgf46/DAFC2pm+/gvQYfI+H34ECsGL2m3SStZQbYGsjiYeRGS
         dwwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WB6pavCA;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id v24si26995plo.1.2020.10.22.23.08.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 23:08:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id f140so271343ybg.3
        for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 23:08:53 -0700 (PDT)
X-Received: by 2002:a25:d441:: with SMTP id m62mr1263586ybf.422.1603433333137;
 Thu, 22 Oct 2020 23:08:53 -0700 (PDT)
MIME-Version: 1.0
References: <fe8abcc88cff676ead8ee48db1e993e63b0611c7.1603327264.git.joe@perches.com>
In-Reply-To: <fe8abcc88cff676ead8ee48db1e993e63b0611c7.1603327264.git.joe@perches.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 23 Oct 2020 08:08:42 +0200
Message-ID: <CANiq72nfHjXkN65jy+unz0k66qvAALNhhhDZsxqPRLdtLKOW_Q@mail.gmail.com>
Subject: Re: [PATCH] treewide: Convert macro and uses of __section(foo) to __section("foo")
To: Joe Perches <joe@perches.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WB6pavCA;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Thu, Oct 22, 2020 at 4:36 AM Joe Perches <joe@perches.com> wrote:
>
> Use a more generic form for __section that requires quotes to avoid
> complications with clang and gcc differences.

I performed visual inspection (one by one...) and the only thing I saw
is that sometimes the `__attribute__` has a whitespace afterwards and
sometimes it doesn't, same for the commas inside, e.g.:

-  __used __attribute__((section(".modinfo"), unused, aligned(1)))  \
+  __used __section(".modinfo") __attribute__((unused, aligned(1)))  \

and:

-    __attribute__ ((unused,__section__ ("__param"),aligned(sizeof(void *)))) \
+    __section("__param") __attribute__ ((unused, aligned(sizeof(void *)))) \

I think the patch tries to follow the style of the replaced line, but
for the commas in this last case it didn't. Anyway, it is not
important.

I can pick it up in my queue along with the __alias one and keep it
for a few weeks in -next.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72nfHjXkN65jy%2Bunz0k66qvAALNhhhDZsxqPRLdtLKOW_Q%40mail.gmail.com.
