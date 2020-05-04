Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBY7PYP2QKGQEMRJRHKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEA51C4DA9
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 07:21:41 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id x8sf1111865qkf.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 22:21:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588656100; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Fx9Rphm/lqX0j9ozpx5ZzhPfryxMz660nAgMafHaiHL38gdnEhqPYAjY2pcAdS/0Y
         LLJnA562bJKPErwBybm6w0a+wbRoeHZu0nbIBZqYo+CW9BiWeyTKeCJWo7ZWgQkNUSF8
         Bi1/LQszk9muY3oh1ioZIStNm261s36Du8ZQFhsngsZMGeES6U3LencYCWVYA0IZl8ce
         P0cRGaNm4iprAddITbbcf1LFG1ZEDag0lYam2PzrOOI4kc4EDBHoxfchom1cFmN+VlQj
         q/YUuX+lTSuGMCoFnnYZ1Tnziu5u2UKo1uq/w0d6aWgfE4Ey3y4UtfD1SXOflOvwB7nx
         11jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=N6XXOjMH7ibWp4Qhn5KY+daUP9Lze+EVo33iY1EXJw0=;
        b=cdKGpiR1BK2wkJg/XSEE1hqdPS9okAjpnpL+QAAXZ+5/9OlqIM4hqGTlcwajwx8Vhq
         YBDtZKoIj2Vfna/O0Ox6yGoHu2WtBOquoEq9qEeIEWJHq+D4Hta2cfsA85IzlACBvJOh
         ykXBWF35kj03kzBD+LSJFUVYv/4hKysKNFVMwE6OVixKiNn8FNwyv6eKQ05gzd26RCRO
         xlcc7yF1Dz7pLOInuNjYo9HCwopEPbZ233/iHAJs2Cp9HmUBEmdkk+i98s8IIw/GXX0v
         S/i+DizUUq/Bwee5GTmMEX+CUvMhrzvqEC1KKdZAPWqhz2WydAutShz2kW/LxW8SSA8o
         sI7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N6XXOjMH7ibWp4Qhn5KY+daUP9Lze+EVo33iY1EXJw0=;
        b=oXhfpfGFng0uAuC5QQz75Adl+67ttFMC3ZcoOp5IOB9zF8NHEsxigMeMhjZZ9gyIr6
         OvIhgZk+L9QuQSR2DktkLm4hoo9D42Cvn4voqYKKBxAhR6QqxKe0udkRQh25Nn22/6hs
         tb4bwE7K5WZJi8oBW4seMJhIZXxpTeTyuUlANbxTen0wdDqRup6r4omxVJOKR8XHgk6Z
         VsIvPmEnQp41vea51GcEBnCMy2Gr9Uj3i20xofbL3ogEkxuyTlk50oOxHuGO0rTj9is1
         xBvHWnf3gGb3K5rS8j5+0Opgh/G+FPVFiHY/C/OqfD7x4Ys5RxOvgTguOGLf8OyZw8Ly
         2hfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N6XXOjMH7ibWp4Qhn5KY+daUP9Lze+EVo33iY1EXJw0=;
        b=DjRvuwCj1IGeSvKgfJrPVYgfOWwNhyS5ykolH3oP55iEpql8ZsqyuhuJZYGzIAaTKl
         3SBY5KWFYbpNU5xtjawtZQGkylaudtuKOMpyXLdGHHQD24Ge5+T0paubyRhW+DC6Pd55
         8XZ2ADvCUWYx1nDemSUQ3ZF2q2JvgGm4HJvJac161zJeuN7O09g608GLkMgMnPu8+5e/
         rC7XnLgct3ufH3BaTjCVA99k4wJXpkVMz/cQ+ZF5TwIgXSvzEfmq/csfPL01tfSHc6yM
         7gPNs3TXnLjnzFcXLKE6foV/tzqOK3juaoRi9YT3jVkAQeg8TRGQk8VLx3/R/tigphNM
         z9hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ/q+1zjuUIg2XLryd8jY//Tt37Jnkb+alg1GkCDSvirtRftkTL
	tI1aucW18A5lgRAKAob9sZc=
X-Google-Smtp-Source: APiQypKN5SJvIjDuwA0StFgCET/PL4JAMUtel7xFmsJ6T18nTbVqzZ12ygiTnBxU8fhm0Dx2c3O9ow==
X-Received: by 2002:ac8:7c8a:: with SMTP id y10mr891785qtv.218.1588656100011;
        Mon, 04 May 2020 22:21:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1237:: with SMTP id v23ls1100643qkj.11.gmail; Mon,
 04 May 2020 22:21:39 -0700 (PDT)
X-Received: by 2002:a37:670d:: with SMTP id b13mr1940131qkc.206.1588656099732;
        Mon, 04 May 2020 22:21:39 -0700 (PDT)
Received: by 2002:a37:716:0:0:0:0:0 with SMTP id 22msqkh;
        Mon, 4 May 2020 13:13:33 -0700 (PDT)
X-Received: by 2002:a1c:1bcb:: with SMTP id b194mr17292457wmb.4.1588623212553;
        Mon, 04 May 2020 13:13:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588623212; cv=none;
        d=google.com; s=arc-20160816;
        b=HvmPPE0D13A5yk6Lqodrnc5EGhD+Z4HHNZ/x5/1KKaahjNy5L3109Wi3jWalp4Ler3
         Vhk0MuHzckNe9uVAeGxlcPEhNyny/ag3oNeR702Zz/dCLvRPK3J2fp2PZRypSNfoufVe
         5vMh65ePhneFSDwQGou4wk8HrHqswPdbiB9wtF5MCv9IA72uPeZCZ4oVaTtT/y89fzI+
         ksPwt+5SYo8LjF0SYf1KZ+sNBsV7URmobRzewCbqfGoEidztfuP+i32fbDvwiqbQAR6v
         GBWfzjPI40UQ2QtM+EghIZhy/fCvlbrRastUX5zHEGAFzImlamCv0EF6F28VAIeSrYyt
         FXnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=gfd6FCdHbGIIMBucU3jZIssX4zoXPWigsspqDe3GlzY=;
        b=XQtuk5A1N2aul554Q6p4SNQeM0PVEAHBhae/zZUHKKaFgT75yliszgwlWVsucl4gKU
         woQVr1walD75KJpU92rXL1gTGbtBWgYoNJ4f4uP0EJelRczBIYNNta1ChmpETU9EmnyP
         fXgUjogiTA5DnfdaF5GOy8+3+KpXmRujUpIY7BNIKqnGiXAdXvG3GBwVm0sIm8gdX2z7
         ezqSqtQaCo5hEZRbY8sLyjgUpoL4vTZzwOtFnRKkxR4lF36Dsu2AeUzv80h0MWqc4Xpu
         ZJNduWcmd1x7wHMHH19AbuLtcQGxxFzAVPILy1b1ysOPH8QljWouJcqXpt6TZCUtawxR
         1VkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id x11si2825wmi.1.2020.05.04.13.13.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 May 2020 13:13:32 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MF418-1jKeqC00oS-00FPDl for <clang-built-linux@googlegroups.com>; Mon, 04
 May 2020 22:13:32 +0200
Received: by mail-qk1-f181.google.com with SMTP id b6so902870qkh.11
        for <clang-built-linux@googlegroups.com>; Mon, 04 May 2020 13:13:31 -0700 (PDT)
X-Received: by 2002:a37:4e08:: with SMTP id c8mr93935qkb.286.1588623210727;
 Mon, 04 May 2020 13:13:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200504081605.32624-1-ardb@kernel.org> <CAKwvOdkmXm9Md6ErKeF26M-9mtk_f2i23zndOwV_Z6G1yWmY3w@mail.gmail.com>
In-Reply-To: <CAKwvOdkmXm9Md6ErKeF26M-9mtk_f2i23zndOwV_Z6G1yWmY3w@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 4 May 2020 22:13:14 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3q+hntaBU7PEm9HYNPwZeBbWU9w1NjQDNikwNisMhVXQ@mail.gmail.com>
Message-ID: <CAK8P3a3q+hntaBU7PEm9HYNPwZeBbWU9w1NjQDNikwNisMhVXQ@mail.gmail.com>
Subject: Re: [PATCH] efi/libstub/x86: work around LLVM ELF quirk build regression
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>, Peter Collingbourne <pcc@google.com>, 
	linux-efi <linux-efi@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Fangrui Song <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:+/mjZBWBhTZxC801Lys76xQEFaQp39LEhvFv3Nk1Ki1dYp5zeXD
 5LrtjQSmkyrUkHUhZ3kqJ4/6pcOoCl1KiApKhZihWrEMOJI/CzrAcqNDmTL5MnMOLoJsPmH
 Tx7vvEmOFoxeXfhCWkx4DH/QFqmih/UycwvAKHHKFy6D1EO30gDx9EJ5qh9BxAvCldRewaO
 ZhkRLy8WclUMinmkCKmGg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8A9z05XE/ng=:iYsk8440c70JG0NVAIsX/T
 2ea3lv/q4QbuBaBeLaNv5ETKbT+QahfO65eRnbfw5RFpl9HWDUUpXmYcujk3U+kJMTxSWgA9V
 6UkiOKKDW2AKAzJrDLi/MdQBTIAM+P/mBnyX/i1LVWYJz3tmAcWYZRALPR6EVe1haHQRZltEJ
 I3ZhgjkEuOWsxRTjZ3d57NeML8CakTKK6185vnuDPx/gWIDkxatm5SWNLXP/S8dhn11pSL7MO
 BzyGbbB0A7sUnop4pDy+ukUOMk1+BPTBYFMBCbZX25C/QyGAFZ8hv1e5vZyGxistg1FoFzYUW
 sKBLR9bmYNvp1Q2id7U8j35Q+QYNHE9iFF8l1qw5rQ06+V1aCmII5WQ2c/KtBT69KSRVQML1H
 qtS43tO5DOiZt5saM0+c769yiRbdnNeIF2U0s/RTtImOwldmzFX75MNfe0Ayp2jzld1+lNkcB
 DyaiLtW51u5P+WD1SRx3MfsSzR8Fs41lDq7STKVZYSAnxmRSsmLnOK2fhEmWX+/xQxcjazZpe
 SBtzmM9P2fMxToPnoSxyFiYcXPpPcODO8D+nYCyjS/orGScq/G9baZnuo5hQ99hwxUJkSBhIM
 E1uxOj6S0x9YNQqVFCi8yQEDAjnYSMOWeA+nviYBf5yzT5yujgSP3kAZ9ItmyUUZdZ1R0uFTU
 tWqt+J8lAW2EpuN+L3cPvxOq73KSYIatUMSpWy3fC02z5ig6TvS5+k/SHLLskTF83Jb2dMBmY
 CDvdHnjRr8adA/ffZ2iLl6IUN14nkHiOq2++2i8TxZrtbcmKPblEzDgKmlnMxla+NE7kvkHIu
 3+fEl2KZ3yczgQfVe4IyuetESPDgeE4eMEifke04kgo6DETZx4=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Mon, May 4, 2020 at 8:54 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Mon, May 4, 2020 at 1:16 AM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > Cc: Nick Desaulniers <ndesaulniers@google.com>
> > Reported-by: Arnd Bergmann <arnd@arndb.de>
>
> Do you have a link to the configs or report so we can repro?

I ran into this four times over a day, here are two such configs:

https://pastebin.com/raw/cjNdRfF4
https://pastebin.com/raw/pYKUrW56

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3q%2BhntaBU7PEm9HYNPwZeBbWU9w1NjQDNikwNisMhVXQ%40mail.gmail.com.
