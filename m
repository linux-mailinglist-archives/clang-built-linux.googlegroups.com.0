Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBUH7YX2QKGQEJAOM3EI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F7E1C5A56
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 17:01:36 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id r11sf1328389wrx.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 08:01:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588690896; cv=pass;
        d=google.com; s=arc-20160816;
        b=0hDtWKdNI19p0/ZfRjNR1Jj8Cuifnefee+hAgdRJs4yg2uWrpK90WbFq3ZNJBv0wK8
         TvlOOyfsjvSCKSRoSlwJvQOIta9O+h1QGAijRuwgWbon2GgQB2K7A5FI/0VyCkcQwI6f
         te9w+6X7VNgmdGftrtqXgrZiqg+MtQXRC/6HlGYbFjkKYaVJNxIU3bhPIosphMsdPFJS
         UuqHVdWUyyqmkPZPNSNkoOO+2pYc1LewO2LJigNBfofpIuEEdPiWBICZ6er6PrPzNYPA
         7nDpJWJvXkRoEfMMEpHpewSnpduWMFAsGVraq4vcOM54urnMDeDsfbUbQXibntqvqUfU
         uHyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=BBvoZ4xCwLZKFT5irsKL6cSMFDRxpCAOes4H9M26aUs=;
        b=ZFFX2pQfNCkijPuQgXCB4JKtIBSbCYkkX0CKrK3En2yXcfr/CddeK+g8DDCAa0n2gy
         DLc6s3Njykukwhz4soKRfX8QO7knWlpKEGNEAPhbe5WOfxibpDwd0OyKigLaHtcvEvHu
         +1o0sjnommUGJ3JoaT4HTHDWR2MxqgkG6R38pJhIvrBnYrz23LIQiXyfTc8MWBY1Lt+n
         dkr6InIao5x7o3Bonzw91FsdYLopJL8oVRy4/CH/sNVnW4TTN1rlvpWZ1HC8TyS/IntX
         GBHnK5NrukyfPiIPhcH/1I1y4minhrnfXrxlGyhM1+ITBGR9qHiSSThh3DC6pR7OpFNs
         urFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BBvoZ4xCwLZKFT5irsKL6cSMFDRxpCAOes4H9M26aUs=;
        b=QcMR0JRJj79RWnqs3mmnooXYkODFs8idW54GReNYHjd37UDh4LvV5JPksO9SZuUWuh
         90LX0Rji0E+AxuTrFQDQVCWt2Bl0emyvMHfHNwgLgX1q4y7DjRUvKI5+5vxegSYifPg7
         csmO9XGJ2yxCnnJiSVgLiZfmh/tqlpYSvAJS6LX7NB8WaJUVnxltdMMKt2ZX+KlPc7Sw
         mPKELfWE70FVj96W+xY9cU+x1scZD6iibEf0Q6T4FeHIuaR/VY8ll1piKkTFGnfA+248
         48mTNzq6g+S/DKU1AscupLwWZIuvd+najcFdrXpppfLBU9WcsLTdGVNARM2AMdPHvBGr
         is3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BBvoZ4xCwLZKFT5irsKL6cSMFDRxpCAOes4H9M26aUs=;
        b=QlXGVnLSAlX50okm0Z2UWeaP3Z6GPq7WGHTa7ZxKZyDOGc3fXfLhyVyEZ7vogZaOMv
         9YV8GQHSswiFHjkUEpIWnRTVj1vE7L4ymww4qn4uKJZP0A4DxG1LEG+txgrv2CrUr7V9
         WqgSwgMm3/yLo786A7WZ6AsW41CgFP0h6RjiXi4r7mJV2+TExXNI3DJjLM5G0XlBHQms
         vZVxzojgZuIqOQ5PKbYEgRu4737cJF7V7ijJet03HA+wRz+qXE8+NrTcfHo0bYtG8+CE
         6msQzODK/QhgC/UPOrRjZ8k3K212tBui9LEwNmk8d6ImFSv/Fs738cYmjuxExbVTvie7
         +DDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubdqAgRV4LNNwZsVQhjCK+yps4yYs0G0AoEUEQExDfzGwDQ4xTU
	F2JrXnP32g2Wcpijv+W0DG0=
X-Google-Smtp-Source: APiQypJuESnfeCCLmHxSfvsSHU97QMzGTHme3l9GUqthlKMpXdzLmkiO5wBMW7v+ciSO4T5TelNTuw==
X-Received: by 2002:adf:9447:: with SMTP id 65mr4263143wrq.331.1588690896255;
        Tue, 05 May 2020 08:01:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f6c4:: with SMTP id y4ls4441577wrp.2.gmail; Tue, 05 May
 2020 08:01:35 -0700 (PDT)
X-Received: by 2002:adf:e905:: with SMTP id f5mr4226638wrm.409.1588690895549;
        Tue, 05 May 2020 08:01:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588690895; cv=none;
        d=google.com; s=arc-20160816;
        b=mZj04I1aXM0W4t+o/ROuL4wNHnpa5Uz8BhbEZaJP3z9GpriGPabpSjyXL6Zj41JVKY
         QziiVbCCkj8lPRHFB6LWDX1b0WGqUyWW3bKTExbHoWtBPoRGFNbDFkOmXrpiHnl1ZITe
         VlfnPhgCMgJCxTmNG2M7cIgRaoAOnN594syXluZgF0GROoIicJ2Cuc2zvsjZ4HMST9iV
         dlTFnvcYXp8/T4ur0C/otJ2lUXnmZ5aoQt2BQ6e4r9qt+Z83+kZHSp8r9IRhDiwKnzsA
         GyhgzBkaCubCaGpaRhpjWnV4NkDfHeDStGEjLa7hvIB4t7r5MfqkuScEwvh3ifL1FPhT
         apTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=6VqeBpalXGRY0tD4GfmNPj4LjWex34H3WY4WVxGkliM=;
        b=YLqriPjVAbrExdcftZGdkNNiL2JofkS+eWj/4kJfHMeCmJtHBdMzMj/jH52eZs0p4q
         +aXm+asn7iwhxJOEE6KjhMH6Z3RnuUJp9wX4YYig/zRqCjv144ubt3D4E4uTabNf4F2d
         WIISxFxFBe+B+svqr7HkZZQnKXY9AqkJFKkgckIbnqkNSTrh+ZyVwC2aPvvpqLQmMXA1
         N2IhJWv87rgaiKF0TOJ615f62vlshv4ZBAejZP3DjaVtHbr8fH6bcsnragasng/LB31E
         stMcmknga48k4FQNDCHT/9ZDVfJpxXLAKBof75Ypo2vPIQyHw5T8RcwNUOWk1pIprOHq
         dE7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id i16si159602wrq.4.2020.05.05.08.01.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 08:01:35 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N5G1T-1j6RHW0Rd7-0119KL for <clang-built-linux@googlegroups.com>; Tue, 05
 May 2020 17:01:35 +0200
Received: by mail-qk1-f179.google.com with SMTP id q7so2579466qkf.3
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 08:01:34 -0700 (PDT)
X-Received: by 2002:a37:aa82:: with SMTP id t124mr3769549qke.3.1588690894009;
 Tue, 05 May 2020 08:01:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141546.824573-1-arnd@arndb.de> <30d49e6d-570b-f6fd-3a6f-628abcc8b127@suse.com>
In-Reply-To: <30d49e6d-570b-f6fd-3a6f-628abcc8b127@suse.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 5 May 2020 17:01:18 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0mWH=Zcq180+cTRMpqOkGt05xDP1+kCTP6yc9grAg2VQ@mail.gmail.com>
Message-ID: <CAK8P3a0mWH=Zcq180+cTRMpqOkGt05xDP1+kCTP6yc9grAg2VQ@mail.gmail.com>
Subject: Re: [PATCH] xenbus: avoid stack overflow warning
To: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>, Stefano Stabellini <sstabellini@kernel.org>, 
	Yan Yankovskyi <yyankovskyi@gmail.com>, Wei Liu <wl@xen.org>, 
	xen-devel <xen-devel@lists.xenproject.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:qoMsbcpLfoBcuHL35r/bDiQgkCXCsw0oQnioiaPmdUzHnHOzYhX
 0KNDbllLxbdTaPxvj5Bv+Lrma81q9+93bKBor7BW0rpBK1MpbhlkqXMQcTPZZ+Kd4n/LgHC
 PFIO2G1U4tdO8/WrOABt00BoS/7bo7t3WIZnV1wyhZ3uHpOYm4lDxgQVkpcgeu4S6fa1r6w
 x0Ta0y8TNVyALqJnNqCdA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:cXcX99znES4=:O2Moq5gj+edjpzjv+l64r7
 I5CirA9FBysd4OgbfCXJek15dv9EM7rAHzOH0LvkhgQcMFNnbvBcuEgWqlNhzdPsdoC+87Sno
 5SzOlUn+ODqD4mxJP3zRo3eiOQP3yq0+z41WjAiLNB4bd9n7+3tmzE8AKLMov0TPRPix9c60X
 j/ylmAvEgwRmQIyrlPxSMXk44HUGOycd7jJ1q/bRsSsCDQaY/13WnTCRkN/ljGDc0JAjvFr76
 ybpeTuLuYYyFG9W0D2SupfDNymI42wnY5PqcMwqgo+IsYRixImV8WG4Dp1sNMbzLUmZ7B8cxI
 ORw4L+0XGF6bFQ+vAZdB2tNP73dXZxSBOsjNwXCNrMkQUX87DAjxk24CRar+mGHRyoO70Ayhl
 EpRWYvNoLBjsFTd0AjXzsOxKI/hylsY3dQ7+LZdB8hH4+L3uiuQ2R/pZWaHGJHOa+Rh/tP/VP
 fp11tNcUkARPEvtTXzQB7CmB93PaTGOwZmmHpnGyx0lZkr8ibVAR8Z+BV8aWvIdQ8tlCNYWMY
 pEVQK6hS1uotnZmCzWWnW0qn0Sl3RKB1TJVBNOdzrYYszAdqC8a9+pK4YDK/A+VY2SJPCOIfu
 1DzudW/D/QmZ2PnFktf2OLLPboqaNH1DWy0Z0zPKAyndiv7p8hTNhHH89hCb/FatPrkbljkTl
 YVHoNzk/GSC8KF+Yn1el/qSq1NThnDbFKUTRmeDnRE/deA/NbfZgiQ23UNl6UOuP2D7EuNaZH
 FktClqfpCo+pKaIyv9Rh04TLVOsksZDdmB0HxyCAaNQQKaeV8m2Zsu36q5awV12DobMU/TbPo
 tN4E/1gFFVooTVY6T1cmufJ0WUSopw+Re055l/cPQ6WI94fQ74=
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

On Tue, May 5, 2020 at 4:34 PM J=C3=BCrgen Gro=C3=9F <jgross@suse.com> wrot=
e:
> On 05.05.20 16:15, Arnd Bergmann wrote:
> > The __xenbus_map_ring() function has two large arrays, 'map' and
> > 'unmap' on its stack. When clang decides to inline it into its caller,
> > xenbus_map_ring_valloc_hvm(), the total stack usage exceeds the warning
> > limit for stack size on 32-bit architectures.
> >
> > drivers/xen/xenbus/xenbus_client.c:592:12: error: stack frame size of 1=
104 bytes in function 'xenbus_map_ring_valloc_hvm' [-Werror,-Wframe-larger-=
than=3D]
> >
> > As far as I can tell, other compilers don't inline it here, so we get
> > no warning, but the stack usage is actually the same. It is possible
> > for both arrays to use the same location on the stack, but the compiler
> > cannot prove that this is safe because they get passed to external
> > functions that may end up using them until they go out of scope.
> >
> > Move the two arrays into separate basic blocks to limit the scope
> > and force them to occupy less stack in total, regardless of the
> > inlining decision.
>
> Why don't you put both arrays into a union?

I considered that as well, and don't really mind either way. I think it doe=
s
get a bit ugly whatever we do. If you prefer the union, I can respin the
patch that way.

      Arnd

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK8P3a0mWH%3DZcq180%2BcTRMpqOkGt05xDP1%2BkCTP6yc9grAg2VQ=
%40mail.gmail.com.
