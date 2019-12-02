Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK5HSXXQKGQECIP7OUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2868C10EEF1
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Dec 2019 19:10:53 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id b5sf294126oii.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Dec 2019 10:10:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575310252; cv=pass;
        d=google.com; s=arc-20160816;
        b=bsk4N2AB9/b9Cb1kKKMq8Z2GyZeScEHar4Lhk0EWOd4/G9HW/OOcEgiWGu66Bi/dJg
         rYRmlRzb5HBLaRhhOiXtXgTiBvXcNvWcNJ4vx9H7DRdJMdqNBkodizhV7TbknqbvXe/j
         jHMuZYoJOSygV/6hFmqDA07zjXNpbc6VazsO1jOg/TbkqFqyaRDORWG3m4X4Ai+mU9Op
         dV0wvpdzRFPOmbtgYT99UDMcPSUhsj65Ul+WBoVDmo0eyNSTqBpCVpuBA3wX+CjlQOX2
         FLlE5Ll723MNStKzQYjg0LhazRyRP1iuDp9hPS7b9DTibHGIfvkE7AgYO9xGoo+LZWmu
         izYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=gbvTyC4/DMHLqp9wS5dpwEQ6ZzRw3Ecie7SLv7wTxKc=;
        b=mMBawnf9nyqcp313T4JJESlHINvABiz9YLkwsJt/ncT0TbIyC+P1rYPEZ3Wjgpoc+G
         8Vdjr7G9A0zG/OyOTjgB1ZsPHhF5SnvYbtFGKhFi0rLDlufgk/DQWtPb+6Kr8kCABHuB
         RNAyiMXMLta6X/TX/PinPty6Voffpk08fhodu6sfNZLw07Mji1du9PjNiirQVEcXdota
         cDnTDEBkttUDHg6uQeTRm5WYxBjpxeNY+8RnIxvbSFZ4xH3+Iua+J/oy0rlPcDoIgOa/
         1GaHIN5JyjghdbtE6y7HqR2AG9aawC2Y059Z/lYwg3VdCD/iExMoYP/BD0MZ5noHVcxo
         mIZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r3Daf3Yy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gbvTyC4/DMHLqp9wS5dpwEQ6ZzRw3Ecie7SLv7wTxKc=;
        b=EgFDIm9gdMFSxJeJkSdj7cH2+YNU7rsHLUNWh2XfFhMwTco5a+MHarV5CHN8moGJbL
         E7nY7g1KRcP61LWHTwxggvXpPvViTweXgmCheRFFVi6jzSloZ1RqidoHLjN3r81tOoSO
         2zULNVa1bsMOIzYOdbTWJf0mgGL+RnhBvYKVdKJgABK1bEiXnn6URoH5AiH97UShgooQ
         QsGouKpkBvXkIRGbCrIZqHKzmAQ2OHV/LejReJT+7oseyB+lbAwGEqxCvUZEcd5BZtfF
         SyIJAEPpHgJ86zg/6sJNS8L/pdpGhnQ/728oE/6rEW9+I/KkYhVkNQz1TBrP2Fmhz3hu
         0HWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gbvTyC4/DMHLqp9wS5dpwEQ6ZzRw3Ecie7SLv7wTxKc=;
        b=PJyW7PwLGCnTCdLgzJ5IUE/7h6O4tM56djRaPqwb6Ddpza5uvM50h0T3kUa4CJUs33
         P7Sfnr5gCwcgR8magHeCUHwkbEY7L/GOOenSsHPj01ommKN26elwuJ7eYpP6JQA8W3qk
         ioQICNF4rKFLpMUUXsLpCExnKU3yw56/pnDLMYGdlEgJBGuwfWDgO3T6ykQ0NWLXDv3H
         2UURXQP0DB9yTZtNb+lKpRBbRb0zIXJ58U/abNNxF0WPsJhhZboGiiirRKinPbyZORes
         gwsR29yoRfM/h9CwUtSb6CU9vs390nUpqbvEXlLlnrULoev/VCXDJsEmr/We4MXBJzje
         skHg==
X-Gm-Message-State: APjAAAVGqB6s5HOIA+uLeK0DuOHZZICoB2en9vQAOjERCEjf8ZWMxl1a
	LSxw+WcsNiEUs2ZCxsu53WM=
X-Google-Smtp-Source: APXvYqwIAXuobPGts7sh55C7oVIwv3gEkFoOMnjkFpxUVGzy2wmRKR4kV4NC+o0tBvTv5/CbeHoLLA==
X-Received: by 2002:a54:400a:: with SMTP id x10mr267592oie.67.1575310251716;
        Mon, 02 Dec 2019 10:10:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:d410:: with SMTP id l16ls79862oig.2.gmail; Mon, 02 Dec
 2019 10:10:51 -0800 (PST)
X-Received: by 2002:aca:ab95:: with SMTP id u143mr294429oie.128.1575310251331;
        Mon, 02 Dec 2019 10:10:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575310251; cv=none;
        d=google.com; s=arc-20160816;
        b=fjen0ohDfoqNK/dscOWO2FLNmGC3Z5pyCOKbDZgR+D8TDpRoPjgZPrlrahRVifj0lf
         1oZvrFG6CMZ+PR3T0wgBVBfRpfBio4jBwsHzgKNckP9NEEKG1qjGEVeZCw5bQUWhY70G
         3l8X9ET+1IYo4t/pgoSaVjJ4J7yyeirMgBSCwcxY82oxFHh75kNrvgSG6LDfn0+r4NMQ
         UBbymR/qZnv7ka/yZ6KfD77cHvqk3ynh3nxFLKVxDHQLrwuKKkrPvq0YHXwNHDqTiDFD
         sHwVLnwOq/qGtM6Th8erP2fZ9LnhyadCN1CyLkR/0hvEaeemAVtm+27CU4s+IIN6bNOZ
         u75w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IiS0hrDFK/c7wtXhXJeLnNmpvEmWHGEj6jDtdt+gE6g=;
        b=oogVH+xwHr6cIc/R9quMz88gu6OhUgGzWLg5/sUsJK6efPobBjQ/BK2irKK/3HeV9q
         FhLV+bHF901qmOeCnNMN2qarV51LlHKjankTyNwJjNdQb48kU96Jr2eJgKL8Q2vr+u5E
         DtXt1ez7C4DOgsmwVuf6hUMa9Jzrr7YzFBRNDc8ykncU6AVYzt79IAoPsuqvCmZk+E6J
         B+gNMjxjZCwg68M8I9Bfuc93viI9SuTx4K/fErUlCtk/Pha+1mC2jClRG5s6kEAYNL4T
         HBnC4UyBv4lhd+p1tNhRYCGkSi7ZMH3jcpHAU9JPXddzRcZNJTvwUk2oYjsTvAFE2D1a
         6NuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=r3Daf3Yy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id r23si2620oth.4.2019.12.02.10.10.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2019 10:10:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id 6so57044pgk.0
        for <clang-built-linux@googlegroups.com>; Mon, 02 Dec 2019 10:10:51 -0800 (PST)
X-Received: by 2002:a65:590f:: with SMTP id f15mr292264pgu.381.1575310250051;
 Mon, 02 Dec 2019 10:10:50 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOd=eubuZH-tVY_KX2pjp4rnTzLBkk9iPfaHkRDqg2zaBKA@mail.gmail.com>
 <20191127065339.GE1711684@kroah.com>
In-Reply-To: <20191127065339.GE1711684@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 2 Dec 2019 10:10:39 -0800
Message-ID: <CAKwvOdkiWq06vCARkqp6EOsDSR2avXzQ7L+-d9jGN0--xnbCBQ@mail.gmail.com>
Subject: Re: please apply mbox files for CONFIG_UNWINDER_FRAME_POINTER clang support
To: Greg KH <greg@kroah.com>
Cc: "# 3.4.x" <stable@vger.kernel.org>, Nathan Huckleberry <nhuck15@gmail.com>, 
	=?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Russell King <rmk+kernel@armlinux.org.uk>, Tri Vo <trong@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Stefan Agner <stefan@agner.ch>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=r3Daf3Yy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Nov 26, 2019 at 10:53 PM Greg KH <greg@kroah.com> wrote:
>
> On Tue, Nov 26, 2019 at 03:12:43PM -0800, Nick Desaulniers wrote:
> > Greg, Sasha,
> >
> > Please apply the following mbox files to 5.3, 4.19, and 4.14
> > respectively.  They enable CONFIG_UNWINDER_FRAME_POINTER support for
> > 32b ARM kernels when compiled with Clang.
> >
> > This is upstream commit 6dc5fd93b2f1ef75d5e50fced8cb193811f25f22.
> >
> > It's a clean cherry-pick to 5.3.
> > A slight nudge was needed for 4.19 and 4.14 since the config name was
> > changed in upstream commit f9b58e8c7d03.
> > A further nudge was needed for 4.14 since a4353898980c and
> > 469cb7376c06 don't exist there.
> >
> > We're looking to use these in Android. Trusting the better judgement
> > of the stable maintainers, we're happy to carry these in the Android
> > common kernel trees, alternatively, but I think these are pretty low
> > risk to take.
>
> It's a new feature, so no, I can't take this for the stable trees,
> sorry.  Feel free to carry them in the android trees.

Done
4.14: https://android-review.googlesource.com/c/kernel/common/+/1179084
4.19: https://android-review.googlesource.com/c/kernel/common/+/1179202

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkiWq06vCARkqp6EOsDSR2avXzQ7L%2B-d9jGN0--xnbCBQ%40mail.gmail.com.
