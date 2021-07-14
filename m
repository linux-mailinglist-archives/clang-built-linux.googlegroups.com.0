Return-Path: <clang-built-linux+bncBDRZHGH43YJRBEUTXWDQMGQE6MUSZQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E72A3C921A
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 22:31:15 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id s5-20020aa78d450000b02902ace63a7e93sf2586776pfe.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Jul 2021 13:31:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626294674; cv=pass;
        d=google.com; s=arc-20160816;
        b=U5S4TEe8Wcp4u0TTS0fFOYouQJYDo+4v5JpJOTVhPS9KsovVs6dfTv6KiRfHsbimnb
         cBDuwaYHYR3tU9tyq3YI+6f0SOKgdYwimUSC4jvPhn0nNPMzhm2B41J0Yi+cGgO/b0I3
         5+/Q4lhdpkIrADbXaX0abtj9vtF6JJ/aICBdiDc2wUvuYO+UCCQ6IdrC7Hk/thFo7rjP
         r4/QFygF22D6rKm0laWv+dKLbq/jYLxOLMw37avcAHeF3YF8dWefghnTpB9SSngDgGkH
         7ZeAWTUnyZH9ijDJ3BWidwZ6S3zFlS5aBaRbVwlOuxWx887dVD2YOIfzPCSzWHnLOnN1
         A/LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ZD3fdempdKCXXAsiNMu/GjALTzo0l7E6XBex+DcC6nE=;
        b=s4fQqNkKngpriImlDwEm/fOwqyzq747JcuB4tPzRT6Ah01bHkXhn3HhPMMOYkEqTv7
         aWMDZJxRf9xHm6gtuzfIDJ7YxJB3ySQ22uHK/VLDXR3XbwJyfPNROoaZ5BqMkJKainm6
         B41rBPVPLXnZjn5uwCBNIndh3PYHkuMi1vol8GnVv0eF4L9IYA/FP5AF3v2JbDqD12YA
         7RkpijoBhKxRzo9PnYtTOu0CbBoWF7KGG0QiQyqmBqFkr3/jvqqsbZ7DkkmduLvW/oAr
         0WiZ9LdSHz/8kOiZDUWk2fSte3cVDJ+/7J56X5Hgf7SoGYrNtdLgl+rmZkO5mjfFLvru
         3IdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NjmbscF6;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZD3fdempdKCXXAsiNMu/GjALTzo0l7E6XBex+DcC6nE=;
        b=nUmQ7AwDh6trlthG6EYszdqZAuKTYd6hLgr0+Wao85gOJg1ovMLpp88BRN4ZWQdtf1
         Q50AzpxuCI460j6BF1bEFx5/1qADB6dbFegvGIDb0kY6lzXIolz/BFe+pg2QlpvKpjA6
         jIh1yzO4nQabiAvRLDAxHGNNcSdlN0pOyn3dMwlE2aDTKKQ7czIedn0QpbjOLwlf6J/5
         RfyQwhLY74a9EIy1UAvWLtwXzGf7i9vTJr12GkUhNgOAtjFoA63KSIEz5Gwb9UJ+Y5mW
         /nncrO4sw1Ijt7VmdY97r4vLayhpe6Z2XHbSXZ1i1x4oKOk+MFYaMqVsM/vc6KKA7lyp
         qeVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZD3fdempdKCXXAsiNMu/GjALTzo0l7E6XBex+DcC6nE=;
        b=J70xQ5Z7HTVcfuhpw+afyxV1tl/Di0bvREp8ULzuxr9L2YRU7RwJbMDe/HBVzCjcQn
         lg9MehuT8DTNnA0lfx5eA7ZB5+iQ6l9L7m5cuIsDkNVCNsGp7eEZbLyrVdimxx5OpI7I
         iK70VevNc0Vc6d8PcBEdLtLsN/1PBX/md9Mg5LPeaWN410Jwgy7Stm8HFm2px+DKSFbO
         hDKCfBfRCBQPlP2t/DF3FJzLnHrGeVHvkVUj42+A0v62prAQfxs2Q/8DRJfmrfsKLTsF
         yQJnGqkd1H1TMAw3JQ4A4TKvFhVAqsBSlGqZBzUuTkXBT+MSyvIW8sLKgACJl3ttaWAA
         hAQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZD3fdempdKCXXAsiNMu/GjALTzo0l7E6XBex+DcC6nE=;
        b=fqL8+dWdBUp7lBrTlVqDpuA1LkhKJd6jwB/b6eD2UG3aNmPuS1GfTQFTUPVQjDHlOL
         tWjJq93KofmGCQ9kYBPlbCjiea2ech6ak4whl5RcmZ7KSaI0Ai9EzrayTzmcToroyFXa
         RpWOz9nykaH4ZHfQDXME2Rv4LRE/kEs6N9/0i9OQaKf34SwsLXqHZb/TQrpF56T5Gub6
         1oWJ7s4Y4l0gZ7+9wnf53J89goHk/L3ScNz4WoWEuvFGMDiDV9SaXRvqDtGoQzhuk5aZ
         LlbqCYuC2gr5PiYdOKuQFIEpEGtTOMK9WulUlhySZMyZgVohK9lLlGlKcByjlHEc/uSV
         UuXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hFZMQtFGMg8cTe2BnXsMAtyXT7Aa9MoJW12rKHCyUzAO7hKZP
	o+q3dTt+8rAKQ2Zq80VbhEg=
X-Google-Smtp-Source: ABdhPJyeT0FIc520k1++s1TRNZCfsYQQeqaKQZMENUsw5ayjJGkYqy9AakDwUaUxOr6Bp3HCBbPhmQ==
X-Received: by 2002:a17:90b:33cd:: with SMTP id lk13mr9879099pjb.223.1626294674109;
        Wed, 14 Jul 2021 13:31:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:51cc:: with SMTP id i12ls1944677pgq.4.gmail; Wed, 14 Jul
 2021 13:31:13 -0700 (PDT)
X-Received: by 2002:a63:ef44:: with SMTP id c4mr11206883pgk.162.1626294673471;
        Wed, 14 Jul 2021 13:31:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626294673; cv=none;
        d=google.com; s=arc-20160816;
        b=I6zqn3S87wqFCb/l9TlSbcg86WCmDmpkDeNiDh9zn3vwt9VmD6GgnyT522HVfb1Iby
         ShrOA5kK8zsXlES5p1n2zDyE87ISSi/W3ov7TQb/1CL1HtzUJwQeQ2oGThc+3dMeXeKK
         rndVdG+tcvYRBDd7sboQB2F2WqZKUDZwFOZ4LmHAG/T4fjGKAJnKkTr5b6hd9Ls48RbF
         L0Fc8WyMl9nhriAZEib5Xte6/eyRcxxgUKYjGDobYxrcbV65CfQy39grFYhTOc/iEIAd
         /4GFp/4lcJrIf9O+xle7ThN+mHQ7J6lvshh7mpqz/175gqte1lC5L1j+yMOHwOdbbwRu
         uQSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TyOypBduh8zc4oZxw1Jw5CWPkP+HxfVRfcAuq+y3WDE=;
        b=XDVRwg6+1+QeKv980fg7Ui2+xHnKo7zhMgEXbjvLmXypVA1CqrVaNQ1F8z9IgeCwWd
         k1d+rXxGAWFislKiRpxwbGXiT5R1Jx2kHauOK6t2ASBmI8ZCcfduLC7IXWdyk6NgbbnR
         auc8jFJH52BVeY4tyhBz/SO5UgqpLuKSYGbjDa/J3i6idG78RGuyBc5qfONI+yOIo6sQ
         4ZYG4TEvEM0tgS5jwRPPzRdj3H2XU5ZgfEvxBmC2vIv65SVh/bCukEebCtwiQxaC4A3v
         V6AlxgRIIiD2nPfNMPsaJpfWZDS/eJcA8lLvTljK/L4qncVpzt8eGW1ddeqqrjhjHPS3
         GNEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NjmbscF6;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com. [2607:f8b0:4864:20::12c])
        by gmr-mx.google.com with ESMTPS id dw12si328803pjb.3.2021.07.14.13.31.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 13:31:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::12c as permitted sender) client-ip=2607:f8b0:4864:20::12c;
Received: by mail-il1-x12c.google.com with SMTP id h3so2860748ilc.9
        for <clang-built-linux@googlegroups.com>; Wed, 14 Jul 2021 13:31:13 -0700 (PDT)
X-Received: by 2002:a05:6e02:de6:: with SMTP id m6mr7931159ilj.203.1626294673267;
 Wed, 14 Jul 2021 13:31:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210704202756.29107-1-ojeda@kernel.org> <20210704202756.29107-4-ojeda@kernel.org>
 <CAKwvOdnO1ZbM_FzY3qwokEkWDxsr37t_u57H_wEO6Pbu6CqFZw@mail.gmail.com>
In-Reply-To: <CAKwvOdnO1ZbM_FzY3qwokEkWDxsr37t_u57H_wEO6Pbu6CqFZw@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 14 Jul 2021 22:31:02 +0200
Message-ID: <CANiq72ncsna9J=xNHg+XqUyFthyRG9bh7Qdw1rb1_=9-GJJh5Q@mail.gmail.com>
Subject: Re: [PATCH 03/17] Makefile: generate `CLANG_FLAGS` even in GCC builds
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <ojeda@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	rust-for-linux <rust-for-linux@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Geoffrey Thomas <geofft@ldpreload.com>, 
	Finn Behrens <me@kloenk.de>, Adam Bratschi-Kaye <ark.email@gmail.com>, 
	Wedson Almeida Filho <wedsonaf@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NjmbscF6;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::12c as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Jul 14, 2021 at 8:14 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Patch LGTM; please keep an eye on the series:
> https://lore.kernel.org/lkml/20210707224310.1403944-2-ndesaulniers@google.com/
>
> If that lands in kbuild before this, this patch will need to be
> rebased to avoid a conflict in linux-next.
>
> So (tentatively :-P):
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks for the heads up!

Given how fast `rustc_codegen_gcc` is progressing, we may need to
prioritize getting
https://github.com/rust-lang/rust-bindgen/issues/1949 fixed so that we
can drop this hack altogether and go for proper, full GCC support.

> If the patch needs to be rebased on the series linked above, please
> drop my reviewed by tag and I will re-review. Perhaps putting me
> explicitly on Cc: in the commit message will help notify me if there
> are successive versions?

Ack -- will do that.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72ncsna9J%3DxNHg%2BXqUyFthyRG9bh7Qdw1rb1_%3D9-GJJh5Q%40mail.gmail.com.
