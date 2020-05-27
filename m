Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB5PAXL3AKGQELYUOE3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 763101E4D0A
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 20:24:54 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id c18sf200866ljd.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 11:24:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590603894; cv=pass;
        d=google.com; s=arc-20160816;
        b=lxX0afSv2MwyxjXTZtq8bddHUku6End8HElrPenrMZJaOXExydDiWKaKDc3yQcwtFT
         on3yFbbIlAV08XEqsL0Shttz1zsUgsoSouL3unM1t7kxKYkONSrDFGiRVfypZuAItdil
         rY9grSR6sKorY5mBiNHyJeWSSzaKB3nuPI5eo3y85qb9tqgqj+BAomyYc+fqGsEEotc4
         Ii49gRvSgR99AvNlBPzgnPgg9FTJBhj4VuyMpeC0nFPUrhhqPm5Adj7PNvgT0X3Z/2Sx
         3T0mIzQ+m2EG+UqM9cOms3c/xqJHtE9McBsUobTib3324WNTkfhKa9hgAmtH/xSJMqCq
         D3+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=V18UHRXNpSh5Vl3Bd14Y/Unv8tQsHBOZYcgdci4U9pU=;
        b=vkoqTCjrCVFmuUhgYJ+seo5q7NFxP+V01BfcR6a5euMpJ1dOiwvwDqkn4/vNLkObkG
         6EGIehckPaefzk2b4URMlhxFQ33/BwLq9uyCduyz4ra6G7N2aFA3GbzzTXD1golskI3f
         p0pQAHFCNZ72DHMz6TvHlRCNDjdCWdmQgAtadnEbx3wUjNRZ4xvQ3y4pZMgevaGLAJjK
         Qay6mK0E2YGIccDtRBYEOOuRtOyPmPO9fRBxYY6PUhmpIJBfUUEFGnvAWYGSJAhdwPWy
         A9IoKmTSPy7ZzjHq4/9LpycrfJOENariy4PN5NRgxTkB4SdKEjIwy63F7wylpGx7mGpa
         WC0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V18UHRXNpSh5Vl3Bd14Y/Unv8tQsHBOZYcgdci4U9pU=;
        b=rBuCiTyRI/nepxdV8M1W+u8K9RkhnYCRYt6PQhkzb69qV8xK9vfgQjW3SM7Lh1RW4j
         vK0U9XASeqCOc79tz5MlkCrMNrOyHfUlvrj6majXgTlhZBRa7UGs/kih5I++2YY4Gi6i
         zW/bOSw2AcDYQK5bSmu0rhbZypkXx0UDOZfSS15JC+7t64cPby+VaG3+wI8fatNo1O2Z
         rzZgcrAGb3nPBzDZVew5NnxntnwccoH+Le9yXeT4h4CZU8sCK15mQ7WdiMSQvsDA8E+G
         9+XQLAgD9Hqc/LabAbybth603CTHN7xl7xNQXsU+aBqWJI/LEeqJz/V+slzcNEBFNPx/
         gG3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V18UHRXNpSh5Vl3Bd14Y/Unv8tQsHBOZYcgdci4U9pU=;
        b=NDyLOV38Mz43OxATyA6+VCCKcfMfEdSCq2JpCufMxIYamM34ZdjtFoT31gJlG8X8/G
         WyoVZryPekxLvXKavLTPCvk1btfZxVFAgSFnT32hX+kXFbDMIJ+A/Su8cd08chaPgKdv
         ijWsAUoxJYFnDK4xIQAgbkWdcO1/ObVIlqHPENZvkbMEH5li3A3nSdqEGtdr04tZuSCG
         RK9P17gm6nt9/XvJS2QSALDo4Yamb6voGP+FTZxoHS5BGRsWwkTvLcJTl7brhojHKpw1
         HjMvpa9itkkIZ4eEBhWVPfJ1pKMwNY+knCzWkzTqvvj6DcYlWjyZG+6Tse/BYk43jPhG
         Sq2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eHVJp29mW6HVM6jBTjmZg1UZlhb4jEnUI3n1oE+tSsMUu+/qu
	nKhZrmje7WFb4XnDaIUfDLI=
X-Google-Smtp-Source: ABdhPJx2rwzIeYg3dqTvYJtqpzRJTYpWllQjLVt3JvYQys8BZW3B/4YjkvY8u21Y30lfmabKKBeMPA==
X-Received: by 2002:a19:f11c:: with SMTP id p28mr3766091lfh.0.1590603894027;
        Wed, 27 May 2020 11:24:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9758:: with SMTP id f24ls3070797ljj.7.gmail; Wed, 27 May
 2020 11:24:53 -0700 (PDT)
X-Received: by 2002:a2e:9b4b:: with SMTP id o11mr3536587ljj.407.1590603893633;
        Wed, 27 May 2020 11:24:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590603893; cv=none;
        d=google.com; s=arc-20160816;
        b=HfYZA2XfFuu5Pve9ri+Ezi5p2UlVVD0DDaglP2vaO+r4KD4pNXdhIRvEb9/8I425uH
         CkxvdEkZn5HWdvqlxBoy+zFQPFzHOl4JEZtKICLO+RF+s1jCrC4QYOc8OGDpww2+Xubh
         YSNGNNYWsNIHvX7MUIAtR0gfRF9ZdqiFtfwspkYmxdLPNRRLbVB8Bs8zxsjLXcZXahsf
         I8DAK/yBLMThds8ZWkeK1nLqk/VZY4o3IRqPgth0mEJIO+2ngNTcFNusOQONkO43eZdB
         DnvppzWPIRDJZ+CG83KyNOeuZDc21IZ2W5cFIy3GwXg4GWFy+CcwrJP19mIqZ0AtQSol
         l7gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=ZUgMNcuvROFsIAhpCvTirwDEjMR2o/VSg/y2dlTCicY=;
        b=jbKOtfwxLVLxS5REFcdjf5TZKDNdK6x37QZWikx0X4RGs5tnEQhESUYBlsctMgStW1
         12D8gFiSCyVxl6QwDdg0qxL7PaPIyk4KwGRzwF0QiCsMU7pF6JQSKQA0PGKgSbXyjaOz
         gLFgENMtnNIPn51+NUt9uyZ954jf3iXZIEWoTL8dG/B8ckPdQZrAQlFG0k28t1R4Jvqx
         e4ExXmpdZCT4uslHkydK3BtEOxMEm/iRR24S7cM4p0m3CbwuSMkbo7n4cKJohCUe89pu
         5VKPqghqak4gOoj2+viUOZ/sUKxOW28DbTcAerTdT3YRq5XTrYQyu/KnzvRee1JEcxm2
         3sxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id r13si136812ljm.8.2020.05.27.11.24.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 11:24:53 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Received: from mail-qv1-f48.google.com ([209.85.219.48]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MuDsZ-1ik8QT397F-00uaEN for <clang-built-linux@googlegroups.com>; Wed, 27
 May 2020 20:24:52 +0200
Received: by mail-qv1-f48.google.com with SMTP id r16so2826439qvm.6
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 11:24:52 -0700 (PDT)
X-Received: by 2002:ad4:58cb:: with SMTP id dh11mr24502415qvb.211.1590603891635;
 Wed, 27 May 2020 11:24:51 -0700 (PDT)
MIME-Version: 1.0
References: <20200527141754.1850968-1-arnd@arndb.de> <20200527164219.GB1073507@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200527164219.GB1073507@ubuntu-s3-xlarge-x86>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 27 May 2020 20:24:35 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1NS3OCNzD3uCjLmJvdcfLRguaoHtuTKXEuvizmbsQYhA@mail.gmail.com>
Message-ID: <CAK8P3a1NS3OCNzD3uCjLmJvdcfLRguaoHtuTKXEuvizmbsQYhA@mail.gmail.com>
Subject: Re: [PATCH] x86: crypto: fix building crc32c with clang ias
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, "David S. Miller" <davem@davemloft.net>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"the arch/x86 maintainers" <x86@kernel.org>, Tim Chen <tim.c.chen@linux.intel.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, Boris Ostrovsky <boris.ostrovsky@oracle.com>, 
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Jiri Slaby <jslaby@suse.cz>, Peter Zijlstra <peterz@infradead.org>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:tJ09pNrBvna7NoAPq7ZPNBe0P6nK9asyYZ+7YkBo56kVPn/Gnd0
 8R0TXfoQ+jv8e/xZTlXx41Ws8arR/uwjdBYDfK5kTf1UMmbQRX12YEFiZK7Ub9pHnueo1Cd
 h/j0c9Hhq0fmoV84JwlUjBN21ckkw3/JS8IqUh1L6DfNVe9TjhidCstxwaZhGenyuU3kNTu
 XEh3CVzlZuWGVWCdsr9vg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ABwtwkYPA+U=:pNeaNqKPXIIZmuh1jh8MVi
 ZM9ctilofYyU1MnJtYTDQzrmqFK4QZSJt+PkiB53fjFRneg5Ifl8zGLJj5XFumjWqbQKsMrjD
 jUTeyOsZBVgObX8dY+8/DowWBGzL9Q7loPkEu7MwDdDkWAxqxnHY8sPsbmrWIJpO6au1xILQO
 Q76hiiTnkmP9JrnIved1fkYwzOfbVUjR0yFxqAR/7/DdkrWmB2dZxktsJmYpk7MwYugWDxllO
 SnCSTV4AkeI3bx3sMfUsLxUljyQqhGhf3xUA3AmMnnDKQltTkDRdVLLWDWReMB05vWDyAYVy/
 Q2TEq8lirn200GYxoq+GxcA+LpK7RywHzjs4b5Ty1miK1tjc3szDKbBXRfgKCPAhjtkTxhysr
 G+HF/5ff0X0I2ycPjT3KqwGPpHTMMBzdaOUAohGesoNV/g2uDwmSQntYryq41bJzxrNvXQOZa
 RJBFnjkIUDu5I6YQJcZfKUCVZ09g5l2PUH4q0oSEGbnoasGg41xBHM9sEm5FBzqQqo1kExAof
 Mch7d+3TkC86iQBf3u6VrH7XB/SC9KvXNVHQYJ61QrMGFhvcznIUVzGmKuP9tJO/0toBwpZBx
 d6l2Txd+A0rZra5aNV6OeX7PcX1q+7Yx3hZclCCCQf+IraJhGsg7hQFoLFqLan4m7QfXWWBBM
 +dB42flcFyuHGIzrXrL9ynlN/PHSYj2NnP0zjyYlon9C3fZ6NMtT22Q33v9ew2GK9LCjnbKzZ
 MP+4w7sSKtyS3Xmaun4f0WVXWPe28KSnAxvF6mcMQcS65bDWCVKBcFVRdrWxYEXQFfTPvlCXs
 Fuj4QtfR+0BBHRUK3otKMsZp9WC8npS/A9+UOd690Af7068XXo=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.13 is neither permitted nor denied by best guess
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

On Wed, May 27, 2020 at 6:42 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Wed, May 27, 2020 at 04:17:40PM +0200, Arnd Bergmann wrote:
> > The clang integrated assembler complains about movzxw:
> >
> > arch/x86/crypto/crc32c-pcl-intel-asm_64.S:173:2: error: invalid instruction mnemonic 'movzxw'
> >
> > It seems that movzwq is the mnemonic that it expects instead,
> > and this is what objdump prints when disassembling the file.
> >
> > Fixes: 6a8ce1ef3940 ("crypto: crc32c - Optimize CRC32C calculation with PCLMULQDQ instruction")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> We had an identical patch pending from another contributor, see the
> discussion and result in the issue below.
>
> https://github.com/ClangBuiltLinux/linux/issues/1010
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>

Was the other one submitted upstream? If yes, let's use that one.

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1NS3OCNzD3uCjLmJvdcfLRguaoHtuTKXEuvizmbsQYhA%40mail.gmail.com.
