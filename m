Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBQVGQCCAMGQE23QLNUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id A1834366A3D
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 13:57:55 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id m13-20020a2ea58d0000b02900befedba4e4sf5303478ljp.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Apr 2021 04:57:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619006275; cv=pass;
        d=google.com; s=arc-20160816;
        b=Poe+ik6aWXrBRrKsumn04fych0/hlYbV7FPFwu4j2Goi9GI5dLYGMDGFCH8bwywLzq
         DdRYkP1yiZutRsllq6S4NTfKJldqmKMqQfSPPUoz1Px3n0KBQWEkkEsqlI760tLYkDf7
         fE+fP79QcVrA4o2rZSwzXuuFe9RI00jDuFbzbQ+HzCblXY0EJlVgTE/K/MoIndNfD7us
         QAhOALnlyTk7wS9BkzOPiNqHLQD7oMHU4amh4IJWbOAvfXxjf2pchgwdVXvCDJJNXbfF
         zY/PayNFxC5EcQtJ7IKnrBTNuSJ9QaEo6xayQa4V/64oV+1Z17HDvpq2jltcW4j5BSRV
         bEQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=5mu35h/efRH9I9jaMDWDk87spFT+CXDkPf/hmbXlXb8=;
        b=bc2JwxoUI+eHeVmRhOPoa2vOD2N1g4ES36+92TBG8KLD+dsWC/9hVJOohXXw0EH6sg
         GoLGzQMzzXd4YvHnzPaAyTem+RcslW2chgL0yVVyQ+gXL8Yl596CjUMY1GjyMm0swsYW
         i8GUX3Uz3uaLh1ZnNSLmaaWRrZx9WxCHazvh/wiA7IqoWGMOAD03iIt4Q7RK8CDMLm8o
         SMkTu2m6O26vzaol6iIke9AcAvsUdMtKMjsbsBBJsUSRmWIb9MioCMSAORY0hihrlT7x
         sb7gUrDxfV04IJlfPOL+Y32wmqWAEE+FSlzRTLYkt0X0XqEF4bPtYShXZXWHEsGPTniH
         2tug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5mu35h/efRH9I9jaMDWDk87spFT+CXDkPf/hmbXlXb8=;
        b=Uw7DJPgmoM9cW2pv+3GGRdCQ6nNtiZI6c4RCW4DlHgK7V21EscfD7kmXQ1txGt06SE
         HvSdusXxHZ17+JVkqVU2Oh8FPyUCW9WkrmHfX0DB7KkNmQrhYhB7KE98/ZTIDODKLI1M
         vvbc3haAnxC+9EA8RTtq40yhNotwF9BKCEzyWzptUdbV3grFFlUt+row+BCNF69tQ+hc
         o+1QzB4uncba4M8phNwv01eqSkwtW6czMX3thD5MY9QV0+R9CxFLZ3Ru54Vk3DUXRUl/
         AlktZ3d59FZBZToQ7qi4YCE/Sp5IhwpDlRwBYcUr23AXZyhvIwkl9BV3lSwy5Vux+OKC
         d3IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5mu35h/efRH9I9jaMDWDk87spFT+CXDkPf/hmbXlXb8=;
        b=pjn7PZb4Mv5KqIOoUz53/3zg1tjAzJRfp0JZUgzWFhPgz1T9ovQ5JHhLNYVC5SJYoc
         0Rgkd7H91sXuklBRbIDD6N73zgOyw48kru+XNFDzdgupkxNDCiyj7D/7zzozdP8Tucbk
         ZQEgl+fq8+juONmxbCSphdC32wBx6RyrleaQnjJB6OT4Yh13bzlMmHaEz2zUdX7b0UCZ
         ltOPbM/JLssIw1HMeQwOOCWo4au04AzwYWA171ko6D8ICRMuaoibgq0JQXRy9yZN2eAF
         VQhvcnK9iAkj2pes+Q7FSxNTgtJ5lK3rGwxaZcrYcPzFh7wryiV4VrKZzYLcaywvcUJP
         H/uw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532PPF+Hj961eckit9Pu3zqfocji/vJejg5CqKJejLk0420EQ9o1
	7EJNmS9PdT6/89ZO1ZTqSxE=
X-Google-Smtp-Source: ABdhPJwTFnXBo1Pl7kBU7WQJgX3kGVLgsoFxfFn+e4DpNFb6QAfz7cApmefq1Ppd4jFtkk9PaJYt/Q==
X-Received: by 2002:a2e:9a0b:: with SMTP id o11mr1913727lji.68.1619006275218;
        Wed, 21 Apr 2021 04:57:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5624:: with SMTP id b4ls1475069lff.0.gmail; Wed, 21 Apr
 2021 04:57:54 -0700 (PDT)
X-Received: by 2002:a05:6512:1081:: with SMTP id j1mr19334045lfg.569.1619006274144;
        Wed, 21 Apr 2021 04:57:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619006274; cv=none;
        d=google.com; s=arc-20160816;
        b=GfWvsjomwOWEgT+8IPBT38omOHQVNJhCotEG3kq2OOAbImZ0kvKW4bdkTsIn/FZqyf
         fckTbgXlxTyEu+ocXGFlTLbpM6t4zkD38igytaCpKyElboi35dCuCrtADjoszDJxHeaZ
         FluPRQXKheynAhaZKGGglyhzB2q7yT9w4YZtIQrCYkW5zeC+AkzvkEbslsb29KfhpVfK
         TCoaxWXyKtRqjGDiLh6PbKwBr676AtivDga1kCt6AjRERW1MBJkH3y/l9uSBw49MMZw5
         Ded5SVdR4KZtOCK6/Zbir4qmp8uV+DKDEvx/O5bvQC3WM3br6zheQsXL/Bsuccb0ezAt
         G2vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=ollGuOmsPx94rw2T0PCZHYaSO47mOMeUsry14ZvLfJM=;
        b=n2eKEyCXXB25jrP8ly4/scYZ+YiTYI+RxgcajmIT0Lv9BvtDUSJFD93E6SHPe7uUbm
         LhqRh4IEsu338MbWfbLGiPra4GKc5AjzPVPaRPvftGcv1o07yPYkel5TPQ0AiJQpi8Es
         KKi8PyGaOqFnAISCszqP/FVCbCkAPTJFQYRwwmN1WKv1k9/vatcP5HH9iVCDy4BOTIof
         2RXNOfxODMLhTGmTTw75gAz7/Sbu5lkWb6jBYT4IMd9i/sj778O/eDe/F57ODqW6OGAP
         x9/0m88gQgw/Ymg29wGiv5Fx+rFnxXwTI2O1INfDRU+SN2/Nw4EbOOWOOWgAVmxCiTkU
         ns0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id w18si151753lft.10.2021.04.21.04.57.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 04:57:54 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from mail-wr1-f43.google.com ([209.85.221.43]) by
 mrelayeu.kundenserver.de (mreue109 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1Ml6i2-1lCGsf122m-00lUsk for <clang-built-linux@googlegroups.com>; Wed, 21
 Apr 2021 13:57:53 +0200
Received: by mail-wr1-f43.google.com with SMTP id m9so28343120wrx.3
        for <clang-built-linux@googlegroups.com>; Wed, 21 Apr 2021 04:57:53 -0700 (PDT)
X-Received: by 2002:adf:c70b:: with SMTP id k11mr27161191wrg.165.1619006273000;
 Wed, 21 Apr 2021 04:57:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210421111759.2059976-1-schnelle@linux.ibm.com>
 <20210421111759.2059976-4-schnelle@linux.ibm.com> <bb21141706d7477794453f7f52f6bc98@AcuMS.aculab.com>
 <aac9ac52de09ff7162fc7caa6e817258d9dd313d.camel@linux.ibm.com>
In-Reply-To: <aac9ac52de09ff7162fc7caa6e817258d9dd313d.camel@linux.ibm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 21 Apr 2021 13:57:34 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0uXo+CLs2emsXE=-Zr+FjxV5k7AWNdGrN0fa37gwub8w@mail.gmail.com>
Message-ID: <CAK8P3a0uXo+CLs2emsXE=-Zr+FjxV5k7AWNdGrN0fa37gwub8w@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
To: Niklas Schnelle <schnelle@linux.ibm.com>
Cc: David Laight <David.Laight@aculab.com>, Vineet Gupta <vgupta@synopsys.com>, 
	"David S. Miller" <davem@davemloft.net>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>, 
	"linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, 
	"linux-snps-arc@lists.infradead.org" <linux-snps-arc@lists.infradead.org>, 
	"sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:z+WN+jnYyporfE5IRH4qNqRcNYZgGr46Ay+SRF9LcpQNBG5dVR/
 4coMMWN8uQMCrID5Aa3rUGMt1AOTp4f7Et8y4XvmjfCvI0e2teGYP3sS4QfTGyOeWG8kcs3
 9gcUl9DX+Yv0RF9ZOCB7EhvZhy+t6jLgNi8AgJ6QNJv12f9Zv0nPzGH6Gv7XqxDNywG4SUL
 VrSAJ/Rh5qPiXhOtcDESg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lTHU22/Bnqk=:zOEygmkhTNnd8H2ZVUvo6j
 /MqIgg+acSSTwQ3Dtu6sN7qogBC45xz0Vxr0LpfpEDNu+pXd0IZiEwI5F1ll+jQxbL2yh+Z/A
 Rly/l223UP9qEjWg2AkXrQxHKlERWXuhPMgqrcaOksxWXrpM35kJJpg9FFvgpZdK/bdmMNwIk
 jGLQpa960X25sPWAGlvOcyEF5W9u0Z4ahUMMdLBbn803ViuJRpZkKFuIeaWyDl7Z3e00jmO3Z
 4iWaM6jyKNT8ByX7om2453Ad6PMiD6l0vdcZDXgpLcPlbJ1swbp7KIAWXU8cGBNpbUhqrfl07
 a40aiOJd2fzpS8dkq8v5+TumCwB9y9fs7ItACq6r60c4ponJ52+m7qpX/Tvx6uNC+55eHzi9b
 oEk+BU56RrZwAYif83rFiHuw5h3M6BgejqL//V04dYhzhZUDwtMSSks8MT524Uc7YMKPLI9UQ
 j2EhwVGRrC0VpzWhHTgZ+Ux5yiDARowGX+sDnekuEuUGmf5G/LhlgMVK5jxSECtjGuulLECr3
 jR0Gg2ioZb7dW5H/S5QHB30po4NIgUE9CjRWdeEll6RjJ6KFpknKfvaiMxEUNjtpzmCNt1Dl0
 JHfDcg8NaNtQkiVFdMDYtAg2AXzlIHwDiCTWJf9xeCu0vATW5ChkhA9w4e0VfN7YQ/JSkeyux
 Qe5E=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Wed, Apr 21, 2021 at 1:50 PM Niklas Schnelle <schnelle@linux.ibm.com> wrote:
> On Wed, 2021-04-21 at 11:24 +0000, David Laight wrote:
> >
> > I suspect that this might be better not inlined
> > when PCI_IOBASE is undefined.
> >
> > Otherwise you get quite a lot of bloat from all the
> > WARN_ONCE() calls.
>
> Hmm, I was wondering if we should rather have a large ifdef block of
> all these functions stubbed to WARN_ONCE rather than in each function.
> As I understand it this would be necessary if we want the inline gone.
> They would still be static though so we still get a copy per
> compilation unit that uses it or am I misunderstanding?

I wouldn't worry too much about the size of known broken drivers during
compile testing. Also, since the functions are marked 'inline' and not
'__always_inline', the compiler is free to decide not to inline them if
the contents are excessively big, and since the strings are all identical,
they should be constant-folded.

If you want to make this a little smaller, using pr_warn_once()
would be a little smaller, but also give less information.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0uXo%2BCLs2emsXE%3D-Zr%2BFjxV5k7AWNdGrN0fa37gwub8w%40mail.gmail.com.
