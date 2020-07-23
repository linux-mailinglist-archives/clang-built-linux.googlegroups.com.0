Return-Path: <clang-built-linux+bncBDAMN6NI5EERBNNL4X4AKGQECWUNRJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD7F22AB9C
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 11:17:41 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id b13sf2282454wme.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 02:17:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595495861; cv=pass;
        d=google.com; s=arc-20160816;
        b=XRnJ5y+UGMCRTv42FvaS0evT9GtslYDC8vQKZGPRMOU0fSp0ui3kIci/KJKVSvfCJy
         Yp+4mCgQxtO13SM59u/JZfvPOxjJnuYJBtDmz0eit9i/Ua3BJmfFWopjJ5i7xahxSuwM
         nVqzY15Q9R6kTQxoNkKW6PW7kBWynUBHrS1I4rE4alG3KBuWiKg08d06E59MoEqO9KNh
         AVnYsNa4rvjlSMa9jYvzA+Z+WcYxC+MfpOHARY1BA+vzk2BHeBJ6OTVQfY4s0lMHg80A
         YuuLQeRH/LybWVUkMq1UsOB2TZCBQ0zTXudA5q1g9IN4ORkcKY54OuqRWBr3v2HjyH1i
         7NDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=5Y2t2OrMDYHaoEAbX7f5GTmN1zcGKGuBn3WRpQIZwgc=;
        b=b8BQr38pEDpH7IK2B7oBVkbLt5UoMpJ8FSS++jpc5T2yoEFnKZUNzUjIx29VSon1sL
         aTvjJNQ650mplYTkJWPH7QS+JuMlzkQra+u0juvVCS7qtWu+BALbP5I004auXl91UZ+T
         uTglFFT9T3DKiQrjTkPp7RBP1YrHciY+UQ6fvbuvOUqiK1SPxI/Eeh2GeJqFuS7gV3HZ
         pondMyviuKfcqQuL608Lg7Fk0LT3CLrkHojJKcru0ULfbPPmBXxbngtjTRCEm5fOMfK/
         UaUDq+zukpO2PkmYb/ibkul/0sBmBPcYe8XgMHwN0YO6o80oNVrmCDfO8PPRdDZ204Ml
         8dKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=IFX39bQo;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=apwUhPyj;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Y2t2OrMDYHaoEAbX7f5GTmN1zcGKGuBn3WRpQIZwgc=;
        b=KFaLFIp1oqkDOAcLsUuY3W4gXPMZl2/8glx/wLwaA7oQ2IHDaJaxj59qwXns+u0Ax5
         HEiS45QGrFSFu5cRJWxAXsL+yYfiQ8swFsH0mIofNrWvq7LQ+ZzLzP7CcpurpFZDDgmy
         hsYin9WvdTEbBRlEK2plO9tOpmFHwiKs6xzxcI7X9Mpdu7JHOKj4r2qDaQHQQCpeWR1B
         huR9KT/97NJc0L4shNTqtqz7X5F98pYDpGxvoBdMrqvHbgQR+osbFAUXllQ1BOyU/USt
         mg+Hx7xXV8OfUr1W1HHdgC2H6AJd30bgNeWXCvMecilzUMsU7FHRDRJ9rjUOnpHQPTNM
         OVUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5Y2t2OrMDYHaoEAbX7f5GTmN1zcGKGuBn3WRpQIZwgc=;
        b=ZZzhPlOC7tJtRTzB2fMPzPyxnnng51mtO5xSZybPlN0VHtpKy6Ho7JxN35o6L9dNX1
         Kj5wThRS3RDOe++tt14kyqI9CqL2HP1ekRFbcSsSwUhY0+NGaJOYqhuFeJkO3Cwr3jY/
         luPS3V/MjF06iSeVFqEnCLn5Gggn4Q+a0yy/w+3h6If70ki+O10oBTV4vPHGTseG2L8c
         yVWdGdGkzY8orKnXNJ92fh5ghe+fNxb608ywjUppmK3Ynb3zXn+jHynQMwHRMBV+Ge4Z
         Lsd5wX033AN0WH1hdrlIu4RIgRd6w6VUt5/THb4mVKPdki55pWwC87HprhmIh6TN1s38
         MGNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53175cnPuGxoLFIMLVu9kVHHbN7AqEqjkYrgprt0qPiMG8KFG5CP
	K0EHk+HJPIdqoKbyYsZTHN8=
X-Google-Smtp-Source: ABdhPJyGB49iuk4vpvJ67PQRYYECGnHdFaQNLmOYO7npmSI5n/2DC9TI63Z1ukIITX02bwHmaURwQw==
X-Received: by 2002:adf:facb:: with SMTP id a11mr3328708wrs.277.1595495861331;
        Thu, 23 Jul 2020 02:17:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9c95:: with SMTP id f143ls2480139wme.3.gmail; Thu, 23
 Jul 2020 02:17:40 -0700 (PDT)
X-Received: by 2002:a1c:81c7:: with SMTP id c190mr3519346wmd.129.1595495860816;
        Thu, 23 Jul 2020 02:17:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595495860; cv=none;
        d=google.com; s=arc-20160816;
        b=df+nwuBIQRza9Xr5EY8QSw/bPiuSd4I5D1AwOR+KMt9tSBEs04QNKZIx6EttQVbFNA
         FF6I5gucPwI3VMvE1doPpPoQszZVEuWS/IpkeNsZvDYohH/Aa8j7lYy2tCrbFJA7UWxM
         0hKRQR7VfyNbAvm5TiN0cf4vjKdN91s4hkuo9mTDQVb6qazdO4IldiSRP91nqkzWIemN
         8pKhXq9HN9i0gewQ6VDPymxmfNEbHV94XqAtc+rTuNYFAnrmNg3AEFhLsoVqLx9lgnhQ
         W+pgi4GzIRzCHG9BWBuqHmqu+s6kOKAw9gL+pIsNwfvB5IsEh/ycJBBI8cCO/d2MuGDH
         ueUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=rDOwKC2fAP8MWrkPzgYFdS4Z3n00CBgEPZ5FRmy5cmw=;
        b=vHKbuKwcceISZyFEr9NXpxp0arTagHuB0CXGvBWLjGPlM3diF2AB6peWlhKw0HLV+H
         kcQ/TyVl0wEyQ6jM0etoP9PMQ89jnrmj0bZWjmo4XxFvODOK4Q4jWrpJHuekGZZiaMjk
         hweJmXGZH+cwdNHfBfrpyzq0ePL2VYKBgqbr+D5EN1CG5hyNWTkeUfUwraM201OrVN0S
         HyRrd2gVhdloZ3uDo9j8lb8DOzSD9tLD7rh/+eGYK+Mw88HD/HAoPlzxl6n6aLFPrjzX
         SBzQLjsZ42uLjs1fSF3ENM3r0QwQCBREMnFgiJXb/5jC1+B9YeV90X1Rzp3SEJM4W0XK
         yAtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=IFX39bQo;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=apwUhPyj;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id m3si123417wme.0.2020.07.23.02.17.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jul 2020 02:17:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: Nick Desaulniers <ndesaulniers@google.com>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Dennis Zhou <dennis@kernel.org>, Tejun Heo <tj@kernel.org>, Christoph Lameter <cl@linux.com>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, Al Viro <viro@zeniv.linux.org.uk>, Andrew Morton <akpm@linux-foundation.org>, Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, David Woodhouse <dwmw2@infradead.org>, Dmitry Golovin <dima@golovin.in>, Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH v3 11/11] x86: support i386 with Clang
In-Reply-To: <87365izj7i.fsf@nanos.tec.linutronix.de>
References: <20200720204925.3654302-1-ndesaulniers@google.com> <20200720204925.3654302-12-ndesaulniers@google.com> <87365izj7i.fsf@nanos.tec.linutronix.de>
Date: Thu, 23 Jul 2020 11:17:39 +0200
Message-ID: <87zh7qy4i4.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=IFX39bQo;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=apwUhPyj;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Thomas Gleixner <tglx@linutronix.de> writes:
> Nick Desaulniers <ndesaulniers@google.com> writes:
>
> I'm glad I looked myself at this.
>
>> We also don't want to swap the use of "=q" with "=r". For 64b, it
>> doesn't matter. For 32b, it's possible that a 32b register without a 8b
>> lower alias (i.e. ESI, EDI, EBP) is selected which the assembler will
>> then reject.
>
> The above is really garbage.
>
> We don't want? It's simply not possible to do so, because ...
>
> 64b,32b,8b. For heavens sake is it too much asked to write a changelog
> with understandable wording instead of ambiguous abbreviations?
>
> There is no maximum character limit for changelogs.

Gah. Hit send too fast.

>> With this, Clang can finally build an i386 defconfig.

With what? I can't find anything which explains the solution at the
conceptual level. Sigh.

Thanks,

        tglx

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87zh7qy4i4.fsf%40nanos.tec.linutronix.de.
