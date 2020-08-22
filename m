Return-Path: <clang-built-linux+bncBDRZHGH43YJRBSGCQX5AKGQEG4OXZFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 308A824E93D
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 20:17:45 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id q23sf1883159wmj.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 11:17:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598120265; cv=pass;
        d=google.com; s=arc-20160816;
        b=jOHUtPaQ325S+qj/RM1/xc92hFUZJZEXeEy/EHdefml6NpUJBhsgMLB1NxKlIXZjwP
         T9WKS6gDyTQNQ6bzkyVtOtH42NGkxkIcBUmOZ99zIFL89si0DzOdL0A+RQkCIhR3wSwp
         O4E1exW0Q7t2+hjaXO+atmmkFMr2n727aNPvLW7rNydN5apgjBNVvAKuAUWxCIidpEnP
         nmGVm18kkn0SyE7JYg+zShOdQVBSnoNlbhAzEZBxsitnrD0FkBoigDYKWo/kZ0wb/mEv
         bZIwkROZjwxa0ZjZAWIv68EYkfNDaAFN5pyw/Natb4V4GUrFmBgTT0rAh3/KVwkDl7L5
         fFkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=LAbPsM5b3i9UtrOMANhUApizGO0n2DUjMSnzxE44tqg=;
        b=ERphw1BBE2z/9aHFiLZEHwQdqMYGJDDf6dpPGcAQi87/pbpNKrXb9pPygxT3Hlh697
         E9EczM8wLpRSG7UhNDaxSeaGlOnlZlyGA/bdG/P0HFL3rpMllrQ/NgV/1Sj4kA34+xF5
         VA/VBWjMvU8nnOIwZrmcCWK6NE2KtYwTuNwvSOmgWVxXiiMZUmG7ctsoaVQTXxAji+NG
         bpybc+Mq8JeQE5ABurCOIhRrZy6kmLt6zYySvH0LCp7HoZ5GB86GkGMaDGS8SwM3LA/k
         K0g8tZLnQQTIqz6HPozAVv+BU+CPGDcDKS72YVS34rHlV9MbbNFZYYE2N/9731EW1RGl
         t60A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dw2ML1fF;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LAbPsM5b3i9UtrOMANhUApizGO0n2DUjMSnzxE44tqg=;
        b=EbkobpjeJgfTXjzY09Tebvwf10d4e15q5dyl1FHYTXHwkqDlZyqwuBsjczIbCRsV/N
         6uenU3JcmpykoAOeS/1JHE9HqZJKhnH++/eEE+pTZgqkx+YoPEpmaZjoZFaC3aWKzJHG
         /sjGQguYUDIZueaz9/UD+hwahzaGlpCjE+t9L1WXwMbCSvOYj/Wuy668ww4YwXwiYjt2
         QfiJd0s6YGHymlGKFJANx/DxAwXTeN412L+sTH7pPb0DgtM37jiPH2+AH4uYfGQpx1qS
         rc0gD29oLIMqCNug0FV8l2xiqj8ShZHyCr4TdemQLCVCLNFrb7HxAJfH7PtAvNnPnsIf
         e+UQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LAbPsM5b3i9UtrOMANhUApizGO0n2DUjMSnzxE44tqg=;
        b=k4diekAW0qBNw6EPFDyyCaknF8gNFfMy5p+EXqjrKgtlE1JUVOzkVoYnjHP+T8UtVC
         UnxqsIw22Lzhy45mCZg/5WCPghP6Wn1Fx1lEzRULDHfHlZMsV53rWOQwuNjds8oqEqYw
         EeWHzDErvLX9QCg8Y+OldscOMBkB8tyX4tDErVqE8V0zSqU/Fyg5dA0qznDKHaQVZTub
         QffW3D0UIxdNXgRlQyniTLzP2GbphKE2GPhCvBt3KWys/EM5tcB4FaKA+aOopfTSA7iA
         X7SndnAp+jeNoy/yH6JE96iHNU21u/0LHR7mR30jf0gMiH+nY/tTY2vA0mMqdL0jgAtf
         t1gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LAbPsM5b3i9UtrOMANhUApizGO0n2DUjMSnzxE44tqg=;
        b=ZY7sqhlCzRp5E5+y9XscNf/bBWitV4ZmPz/xwI3oPB++UcDH00I6jb0wh/GiVHkXV1
         276hqG4qmHdsu4BO7bw6nnzrvCjJo85OfzQcD0wzxaeNCmgrVhHfKLb6CGGyFyzp3GDE
         HBzgTdIRIx8IBt4jAKCR0eNpWpF/+09JF/vD7Oblv4cKQwS9P2Q1dl3ybWUrUntLQ2Gi
         QiSpfEXMkvIpRDGXn8/0UgFgwIz0Rbpe6SCghCPUXRQCEy0dN1XUQEamkocFFIZaJIgO
         kFWmoU2/XD4MojSQWwDtA+TKhbXPF5bGT4W00XhZP/JTOToDdjNVcL0zk+rvP1FjY+jx
         To5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Tcp8k6RIRGR3LeFnPoA/3Mayr/B/pkpaCNz4wrRuMrSwdkeRU
	K1t24W84eVoH2h2UHnS1DHA=
X-Google-Smtp-Source: ABdhPJwKM+8bI80IN/gHBfXl+m/Li2g0TPH/NfTUJ9j/E+flu/+sx5N46sv1W2HUxO5wKIfAF3aHIA==
X-Received: by 2002:adf:cd8f:: with SMTP id q15mr8567708wrj.347.1598120264797;
        Sat, 22 Aug 2020 11:17:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6592:: with SMTP id q18ls213422wru.0.gmail; Sat, 22 Aug
 2020 11:17:44 -0700 (PDT)
X-Received: by 2002:a5d:4746:: with SMTP id o6mr8373061wrs.410.1598120264131;
        Sat, 22 Aug 2020 11:17:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598120264; cv=none;
        d=google.com; s=arc-20160816;
        b=QjawG317vPR3iHy76MOwyr+f4ioH3CQz5eYRQovRPOml/3Nj6f3IvS/2W4Cy09Vm4F
         9EB/8gLoEannR3LT2eCvZCtzWMgQJtCDA3q7VIft+qgSVkkELsPFKEmPfZRPeTHA2uW4
         felwOtVuxco50xLOdpVYWCo5nvOFeSeiip952yGVG/t06o6A2lDHlvpAAEPlObZdW5/Y
         tS0yiPDyKsFmEosDSNyvxTHwd8WqIJmZl0zomac5RQ/aqoc5QFwkJ6Z3CBszA5bLyo1k
         6HDxgYTX1FpS90Jaf582D76yhEC1aJDY13YC3JlHACbLcpfCrCiDsNzG7TmeN1Y1LHwu
         0paA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YChPTRKYweJBRwXhiNVWgynaCPUMI1IPuQnqYEi2Wg8=;
        b=vCFkWq9w75jrAba+Czlm63eA5DjTERxQj0fi8Ojmmxonsag/EWkLiCf7xHpGti06T5
         1DijT8R6oeQD41lYy6OrHeTSXrbid/c4U54y2v+qYmNDvvrMJggrz5EcvQQFr1Wa5t2W
         8xCWVqYIelbRWKpdMHkXAtu70ESeLhWOEftLu8nCxX0YT3NTAlmzlixiPvwz7ad5n2Ty
         RFlPBl/tXS7eEXjmLwSc0Zny4HlIis8MvsVsobV/MkpdrTFSkEvFV4XaUW1A/26F6VTz
         exCL9LmNr+pfG3qQNTXADueojs8oyIvnwfCDeds+/7yjnDVubs/XZButQU35Mj2TuV4D
         FKtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dw2ML1fF;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id w6si270289wmk.2.2020.08.22.11.17.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Aug 2020 11:17:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Received: by mail-lj1-x241.google.com with SMTP id v12so5286404ljc.10
        for <clang-built-linux@googlegroups.com>; Sat, 22 Aug 2020 11:17:44 -0700 (PDT)
X-Received: by 2002:a2e:920c:: with SMTP id k12mr4301931ljg.29.1598120263649;
 Sat, 22 Aug 2020 11:17:43 -0700 (PDT)
MIME-Version: 1.0
References: <87h7t6tpye.fsf@nanos.tec.linutronix.de> <20200813173701.GC4295@paulmck-ThinkPad-P72>
 <20200813180933.GA532283@rani.riverdale.lan> <875z9dioll.fsf@nanos.tec.linutronix.de>
 <20200820130641.GA536306@rani.riverdale.lan> <87zh6ohm03.fsf@nanos.tec.linutronix.de>
 <20200821230435.GA56974@rani.riverdale.lan> <CAKwvOdkoB+fT9tt7vgg1R6J-NEr77EWP5X8nFat_L-HvEzWGzA@mail.gmail.com>
 <87eenzqzmr.fsf@nanos.tec.linutronix.de> <20200822035552.GA104886@rani.riverdale.lan>
 <20200822084133.GL28786@gate.crashing.org> <CA+icZUVf9a8LC2Mf0cFymYQfALWs6bVfR1v1nRbxKaLAyU6NkQ@mail.gmail.com>
 <CA+icZUWGHo3mkN4=ZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g@mail.gmail.com>
In-Reply-To: <CA+icZUWGHo3mkN4=ZYeU37p8KJhxTXS5QKcAvq_HaqTHmFkw2g@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 22 Aug 2020 20:17:32 +0200
Message-ID: <CANiq72=3iOh5Z_rboZf-_GUpBE2LUUv3yPKOVNN_XmaNswdNSw@mail.gmail.com>
Subject: Re: [PATCH] x86: work around clang IAS bug referencing __force_order
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Segher Boessenkool <segher@kernel.crashing.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Thomas Gleixner <tglx@linutronix.de>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>, 
	Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
	Zhenzhong Duan <zhenzhong.duan@oracle.com>, Kees Cook <keescook@chromium.org>, 
	Peter Zijlstra <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, 
	Andy Lutomirski <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dw2ML1fF;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sat, Aug 22, 2020 at 11:52 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> I am asking myself who is using such ancient compilers?

There are many users/companies using older versions of compilers,
kernels and everything. GCC <= 4.9 will still be used/supported (by
third parties) for a handful of years at least.

However, the important question is whether those users/companies care
about running the latest kernels. Many of those definitely do not want
to touch their kernel either. For those that do, there are several
longterms to pick from that still support 4.9, as well as other
workarounds.

Thus I am usually in favor of raising the minimum whenever new hacks
are required to be added. On the other hand, we already raised the
version twice this year and it is not clear to me what is the minimum
version we would need to go for to ensure this does not bite us.

> If this is a real problem with GCC version <= 5, so can this be moved
> to a GCC specific include header-file?
> Thinking of include/linux/compiler-gcc.h or
> include/linux/compiler_types.h with a GCC-VERSION check?

That would be better if it can be done, yes.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72%3D3iOh5Z_rboZf-_GUpBE2LUUv3yPKOVNN_XmaNswdNSw%40mail.gmail.com.
