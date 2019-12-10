Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHPNXPXQKGQEWOHLAEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC2D117D3C
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Dec 2019 02:36:32 +0100 (CET)
Received: by mail-qt1-x83e.google.com with SMTP id q17sf845527qtc.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 17:36:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575941791; cv=pass;
        d=google.com; s=arc-20160816;
        b=0lMrCvWZ6Ey5joyHz9JS02CNFviEGZDEFnv68jRtSDADXKHjxWjuPNLJr2wy1zMjl2
         /0WNS6HvmzJszc0ACpouSHUlGg2IWGBpHhMz+8gI4GROjFUyKVtSuu+M6meSDEV87COj
         ss97iXEdaemAvM1VWlMdIl6q+dK9iwyxE3WD26vLcL9sz5JYeSoYycp6Gt8V19zTylJU
         5Q/hOiFoJcvYsaYUgZZPn71I3cN1kvHpw7+ZJbcsxmqeQlNS9RdzFhqiVv/V+1T1N9+A
         ccVh1MEDhqXH6EEQrsBukVW0zLgcFIU0xLG/o1nAmOcEG9vlvLxD1ni3DbhHUcPDn6b1
         4SuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ar/qdlY1UHWaYNPx6+jxcYTyp+L8dXaw/9r7ow6Sw8k=;
        b=Izm9Ss6YsQzBViohXc0Yy8jaYj4S47FJC8ggweW6qMgJ6onvKSQUu1RTvHbKWhbGtV
         wbI83kuJ9ysNHlCjKtiezm8EMRuOUcJHDV5BUYIbpeYeNfCA+4H/Cgpb+oNYSOvgt1Kt
         fIdzYg9i4clwQZDAKRHjDYjGhdpeSm0F00IOhnDkbMnzIzu+VJLO8NfKtuzyk2dDQJmB
         PI16nSasTGdQob3ljPdRksTt3sWgDTxn8u9DU3uhNz9uOmsameUKBg/tuXB1IY6zhBhX
         000S5dbMAhvCIRJqKjBZ53dYFmHtXRlLPX32NGcyw3Y/rrGm0a03CV+cwCjusJIpH4fi
         D8/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Tr+C241t;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ar/qdlY1UHWaYNPx6+jxcYTyp+L8dXaw/9r7ow6Sw8k=;
        b=E8OUqtHqS4+PijhLgyciMJYU2pKwryjTwBlQeXzs7WHEbGbD6598oDob37z3sni6hF
         QY7YEj+By5sufuxBR4LeX4ilzCTytqq1qIA49UdTSRF/kT43LScP1tdfk0mLeo5okdat
         3yFt0Uopqf+IMyNUaQA9b2IcYJKPoAb3y5TCxFj2uUa22Vxugo4pF/O8W36y5qVl8QZf
         ao6O3HR4mbglBKNT1+xk6n2Sm6Q/9dRRMR4Zr3SOyx1CwKVtU32gGWm7z12WqgA9DdsQ
         9qCAxb1e9NAc+j5UAggNFeVOoApJ0GCpgerg6gOh/xVaavIIblG+ihVZJd3/qQ6fTghG
         uUOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ar/qdlY1UHWaYNPx6+jxcYTyp+L8dXaw/9r7ow6Sw8k=;
        b=sQn/mf2sUf4ilRDIIuQmg2Je2BeRRphfksp26xZHIV/q6EIX11tJEXzsd2ngoY1tGG
         a979s06F2BjN6HR59xCQ1zbp3sx33RG/sR/POuHSFoEyAvb9gGBzT6DEFdpctrBY8hQy
         e1l8ylxv8Wa1NgOI3jM6T/7MA8qMWNZYUPp5mkdTvpOeQIMSs7erBRDoHhHdtKQXSZWv
         OXzQK8KaUNVxP2k3UUgFBmQFiphhePS0i51oj7dQng4Of2FW7d8PBG4a3572VB5ZKJhA
         SP7tORQfdi1cVamT/4AU56DgHF09N+oMq+EPqg3jefwOn5Ntx0+Ikzk+0XoqkD+cm4Ym
         22Mw==
X-Gm-Message-State: APjAAAVKqBsV6/TL+lc8uPS+ksAu76LK3aWPZhc3sfyOH7MFhHsQcGhN
	T+wCcJ/BLV+rNsmLFyZk8mI=
X-Google-Smtp-Source: APXvYqwy9T/jMADrhdew2RrLLYU57wIbMC+doWtDaWY6x3hQdt8PfqFO/zkgKKsBe6DIUlSW/gAWQQ==
X-Received: by 2002:ac8:1866:: with SMTP id n35mr27697981qtk.28.1575941789703;
        Mon, 09 Dec 2019 17:36:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2746:: with SMTP id n67ls5639938qkn.8.gmail; Mon, 09 Dec
 2019 17:36:29 -0800 (PST)
X-Received: by 2002:a05:620a:136e:: with SMTP id d14mr5119107qkl.342.1575941789314;
        Mon, 09 Dec 2019 17:36:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575941789; cv=none;
        d=google.com; s=arc-20160816;
        b=S6W7V1APNtGUrCgeXfcotFcjIagxZVWViRrDWz9s/6EZID4FUxM+okQWunDmJO5ehq
         6oIlcxWjnbwohkfyzUYnmjV1XJo+ngUAHbMPrkL/6LAdNzFIAhHgdsJmGnnQgGbokHtn
         YMfqwfv+wC2xAXIZlv3Fbb9/GHmv09sTnHpZvLukekC7KS3Zqhrr7IM2fE24LjvI+8KM
         OMzvgR0q+xeHYqezZlBDvRlL4LTbc/sWE9nagZiibP2Ykqb1cFiV/GIjtO+NcE6x4gmj
         irRnEpb28CY03Ewsni8sZOY5JJO+JtkprSqaLymyiCztrQzT1knWaVIBgCTAsv4zBr/D
         bxDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3/ArZYKEfjZPBsRcDlrm2bJB7ahGFDYf0VWt4hD0Qjo=;
        b=rE1CqhczuJ94LgqLe+lObpV4plLt85erDtTfSqftK7itN0410kHkg4X7HchFgtrmvy
         LhQeMOFKMsTQxGcFoihrLo/hq8nXr2yY5h0d2D7BWEPbrbO4zhqcBeOqUXzYcJiQxTJn
         6142mEe+2EgYqtq6yQm6CwOW1PUb3UU7m50/rcSul7/Fi++Ia2NnUuizgOFmRsRxkpY9
         ivSYpZD+90wDu3chD07yu/cXe3+16pYDbCe1dS5gZ7dfVoZIOuH/LCyiujT2lXbnXzjJ
         ZtmU0Q4tchUUmDI5jx3I6Tj71Onj6308KW2TG7ADkLwMWuJNs3vPWt+2vz21lcEJQJVf
         QLJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Tr+C241t;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id l9si79765qkg.5.2019.12.09.17.36.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 17:36:29 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id x185so8176376pfc.5
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 17:36:29 -0800 (PST)
X-Received: by 2002:aa7:9151:: with SMTP id 17mr32836592pfi.3.1575941788095;
 Mon, 09 Dec 2019 17:36:28 -0800 (PST)
MIME-Version: 1.0
References: <20191028155722.23419-1-ndesaulniers@google.com> <002301d58dcb$a9ffaa80$fdfeff80$@codeaurora.org>
In-Reply-To: <002301d58dcb$a9ffaa80$fdfeff80$@codeaurora.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 9 Dec 2019 17:36:16 -0800
Message-ID: <CAKwvOdkbTMj92Hj7Z2ucbJY5B_AZgANZhNoeOa2Taa2YTbCQUg@mail.gmail.com>
Subject: Re: [PATCH] hexagon: work around compiler crash
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Sid Manning <sidneym@quicinc.com>, Allison Randal <allison@lohutok.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Richard Fontana <rfontana@redhat.com>, 
	Thomas Gleixner <tglx@linutronix.de>, linux-hexagon@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, bcain@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Tr+C241t;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

+ akpm, looks like you're picking up hexagon patches? Would you mind
please grabbing this one, too?

On Mon, Oct 28, 2019 at 1:09 PM Brian Cain <bcain@codeaurora.org> wrote:
>
> > -----Original Message-----
> > From: linux-hexagon-owner@vger.kernel.org <linux-hexagon-
> > owner@vger.kernel.org> On Behalf Of Nick Desaulniers
> ...
> > Subject: [PATCH] hexagon: work around compiler crash
> >
> > Clang cannot translate the string "r30" into a valid register yet.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/755
> > Suggested-by: Sid Manning <sidneym@quicinc.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> LGTM.  Thanks, Nick.
>
> Reviewed-by: Brian Cain <bcain@codeaurora.org>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/002301d58dcb%24a9ffaa80%24fdfeff80%24%40codeaurora.org.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkbTMj92Hj7Z2ucbJY5B_AZgANZhNoeOa2Taa2YTbCQUg%40mail.gmail.com.
