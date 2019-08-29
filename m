Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVXTUDVQKGQEYXP46KQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5B3A2856
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 22:47:20 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id n186sf3443802pfn.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 13:47:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567111639; cv=pass;
        d=google.com; s=arc-20160816;
        b=fNwGa8DHu/RM/Le2X06x+herwP2GLtPraAiAuBbGW0Tkj6azYM62sM5qUYjzsr882B
         Cc+xfNbq5czulzaCY/S9/RSx6IDuj2ZwFrwOn++G/VvafJj/sKiEi1uzPYRk01tg5W6e
         FCi9R0bS7eS0/dFjzY0A86OD6AGJEqcVzc04RLavkqsc2CDw/17glryZHc48bXQmgAfR
         mK/xC6nuCF3I8q6ZQrJCDCAuU4OGM29i8flDVG3AsGUlRRzUw0g+L1VPPa4VEYL1RQb0
         707lCdQNuluo6oDDa84tiqPz1qQn/v278IWeff6vXmV25DWVboovIhyiV7KoH9Xl3KG0
         CH7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=iSYB8q7erN0F/3Lf2MlGGYbLyo3W7bFFnR4qmtqzDZY=;
        b=z0klnvQYLvcP68coguy6cbhIplu2azfGA8kUKVVxR/K6rY1MKyqdW+5EPKtHnyTXCS
         XZSjgAfObgovDaBNM8nzHAGH7pY/9ahemljT6hC2ERhsNLy+bLjZEWVsvJnRlLbxKQ7J
         8YiStnPsnNCLshLZHjbTfeRLk2yno/Snl5hDVBEfSMVzskYaCr4jSGaSXOVSZ5ZgHxrq
         Fj2N40mZxwX0E7yrsbA/jYW9Hobs9JPVMI6YWQBLhgfanwOGLRZ6IlOu5CPJ7Gr6EUtd
         puOqSF4xrS1Hj/9vbTWVfiCEEPsxIBKtAy1OhWK6RDovsLOvh11j2xp6i1Z8QhwcgRGd
         lvtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CadrU8gh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iSYB8q7erN0F/3Lf2MlGGYbLyo3W7bFFnR4qmtqzDZY=;
        b=b9/fQmYAqjhdW+myYM1e4PHPs7S7y81at5HvBY3EUpyf2sjV3d8BCxmexU5EioGotj
         yHFXl6bgi3ur9hT/F0rMgFrzWNpwr4gZ8X+N/Q5+9ZppXwRS2yKqELq43frmTPQ3rrXw
         tGiClqtJ8h4U9dgFjSfn6leM4vP0e9OxTyuFZ6vJb/n1RTx/B2YZkBbczb7KEghyHEMP
         rvNBo3deO07xEjNhzXle+j+7bmBCypoHqcr+0ntW3N90FkhaTrTF9+i85FO51AQxZhfx
         NK455W1zwevpdofbcvvSSqdhuoXW3BwNAln/62hLYqLDTKTan9SuYBGKRWvBZGCbaeEm
         h3Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iSYB8q7erN0F/3Lf2MlGGYbLyo3W7bFFnR4qmtqzDZY=;
        b=qfQUhSIv0hg8pv5XKoHQfKQRLDI1dEQsdz2m0YUJW6cxuFtEKFZHbUysxPLzlGja4V
         Bu1P2PhBdtqmkZXJV8crxbM606qQ9SbS6t/bMtVvfV1qvTYceRUyc+vBA6q1KcEdJr79
         JLpckKxRtUu7yRSkK6SuEILIrIXy6+txh627mAaPMD5h2gja5+UE66tL9C+So4REfUwL
         m3rHz2EBvQR/x2WTZpvkJUweMdzB3P80LF98etVeRS4FB/bb3E0p6OjZb6i7Bz1CYg7J
         IZbvJkpCOsXrfP0oe4ldkzXDxotzo86Wry3dK7h7UN1z9Tn1dknxvwI2C4YNPjilThwk
         rnyw==
X-Gm-Message-State: APjAAAWCGVUxv1Mq8JuYlfRBawsFCldl7kOlmuqUi4rRrcRaPGoylgoE
	RqJ4dSYyRn+592rzHM+eOLs=
X-Google-Smtp-Source: APXvYqwmy10hgLZ5kTu5nifNcE2QHJ8XSp6ivpZpcQ8267KyC2tR/94qvgK3sLuG0mfv3tBu5Sez/A==
X-Received: by 2002:a63:5648:: with SMTP id g8mr9821050pgm.81.1567111638812;
        Thu, 29 Aug 2019 13:47:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:47ca:: with SMTP id f10ls788514pgs.13.gmail; Thu, 29 Aug
 2019 13:47:18 -0700 (PDT)
X-Received: by 2002:aa7:980d:: with SMTP id e13mr14047621pfl.33.1567111638522;
        Thu, 29 Aug 2019 13:47:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567111638; cv=none;
        d=google.com; s=arc-20160816;
        b=egqJz/bBZYilavqpAIn+SjTsNPatP7sIR7kJAhdRJahbRpwREju2aI5GLLD4Y8u3Cz
         +rr//BJ8cy/hFoNgerPzKX7I0y8+PottBxqo6n478xA7zD4UHotYV7jMrmpOuIGPkNT0
         UqK2uW1opC0PeVCOQSMKwqWaznmsljRNIOHagVTX+xQJ2z01Hoht/oNBhmsUSYhAeL2T
         7FQsOW2dvQUH8YJg/K3tDmRuGfnSxbV3MdRZjvtQ0eTmCjROfQi/Z5Ehc5My9+bZUk27
         wzXc724BNDZf781IOi8ErPfzvUwlT1Rw4nQ2/RNOxSQBz6bq5dpKlD24gxP+FPv1Zsxv
         gqzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MJayklqdWT6csEYdYMiQVvZMqRpC466630ChpVCkdxQ=;
        b=V/1ts3b2N1R4SDGCN3+yArsJ9UucAvs6qw/Zkj9Ps+eXtynV1MCKjz5PjOybBBJJps
         qDqielUgggwQkJ9kAzKooCYLG3CoMZMQHGTFQm2zwhOf25L48j5V7LlJYnu89HKr7m+2
         Dwc7LgOaEr1A5GHhuLI865Ksnn5I86HfTs6bccui4uAp1pv7/JsEF7GVjnSPjmPpexw7
         I8Ald7IVV4OC/nZLfyYiLAkzSEINYfvXZkd4j0CIlL0uhaGPhvzAhX1CtcDg1Nf0FVWi
         6Bedsj1Xsz0hOkMrtmQgEAZWDDjJZPWAdONxL3npbR4CIxtFggWllMwtJjmYt77N3FXf
         hRgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CadrU8gh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id az14si193105pjb.0.2019.08.29.13.47.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 13:47:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id o70so2894008pfg.5
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 13:47:18 -0700 (PDT)
X-Received: by 2002:a17:90a:ac02:: with SMTP id o2mr12093307pjq.134.1567111637649;
 Thu, 29 Aug 2019 13:47:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190828225535.49592-1-ndesaulniers@google.com>
 <CANiq72niUcQv-TFn=_0Ui7nEM9ESKNC7n6GPQs2AKXVsg6ZV=A@mail.gmail.com> <CA+icZUUi9Tsjha+unG+DasXZ9oBb6XcuZvj+N9h=b4XH7cHmqg@mail.gmail.com>
In-Reply-To: <CA+icZUUi9Tsjha+unG+DasXZ9oBb6XcuZvj+N9h=b4XH7cHmqg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Aug 2019 13:47:06 -0700
Message-ID: <CAKwvOdmF0D0vfoXdJgUxmc_Zszuid+QPL+LT5CUiaYUSA9Lp4A@mail.gmail.com>
Subject: Re: [PATCH v3 00/14] treewide: prefer __section from compiler_attributes.h
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Will Deacon <will@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	naveen.n.rao@linux.vnet.ibm.com, David Miller <davem@davemloft.net>, 
	Paul Burton <paul.burton@mips.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CadrU8gh;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Thu, Aug 29, 2019 at 1:37 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Thu, Aug 29, 2019 at 10:24 PM Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> >
> > On Thu, Aug 29, 2019 at 12:55 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > Changes V2 -> V3:
> > > * s/__attribute__((__section/__attribute__((__section__ in commit
> > >   messages as per Joe.
> >
> > I have uploaded to -next v3 so that we get some feedback tomorrow
> > rather than waiting for Monday.
> >
> > I added a few changes, please take a look at the commits:
> >
> >   https://github.com/ojeda/linux/commits/compiler-attributes
> >
>
> Thanks for taking care and bringing this to linux-next asap.

LGTM, thanks Miguel, ship it!

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmF0D0vfoXdJgUxmc_Zszuid%2BQPL%2BLT5CUiaYUSA9Lp4A%40mail.gmail.com.
