Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBU4CY32QKGQEVA5B63Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D45D1C5A83
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 17:08:04 +0200 (CEST)
Received: by mail-ej1-x63c.google.com with SMTP id a23sf1364459ejv.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 08:08:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588691283; cv=pass;
        d=google.com; s=arc-20160816;
        b=EliEi+/DNDgSVjfL+PZRWu3e00TucUUUHlId2b0qBf1DTpXxznFhLOH4M0VLgrEuli
         wfs2I6kVZdVgkzh0y4GGjcSdPfNmN4JkoTx8h51tIuBd3KMh0usOWeWpoOJA8Kxnqq5I
         72t8ny9+jFVsmKT8un+BPDXDuX/v3VpcQ8bpQtHmXVEbA/OEEY+/IiyOI1jrebNY4NMS
         KKMZtd8NkCdD5PzpCwffF3tofpAIOzNyupboxi2pH4ZJxjIl0n0fgaKPcF39YucabICq
         A7NiXjPYjN8ZwIciANm6D/OinBiQ972cCpCVTyAEdJRHC9vY87OD/Gl20ZW7wL1IWzt7
         TewA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=NnSV+B6D2H2HjFqJD6lkpT6XpzQ/RLDbEmf2Hsce2b4=;
        b=hW8KgKT6YG7lGk6IfjQAHSYaJIEWNtzi49KtOfadvZ89zMRxtmC5hhyqtJ6YWsC5Rk
         73tYogPYylgRoeRqRJuVsmMFCJk0LRHLoIigG34vW8fp/pKZA5elfoPrtbJ+66UgBc5E
         RDrT7xNHnQV0x8r2wgrvfcBVu8oF1z0XZZjodCLdXc2Lov5ybwZzVu3OtYsNiv1o72zH
         O9p9XKMDVpxFyH2Qox9KX8bBsNjnX1buMvEReHWO9OX/E9e4HzNbBd4J1whrxQ4N4jjC
         YtJzln1kqt/3mDM5Dq2C1DSFNZtN6ZPIvYDVqvmfu9U/OZWY0Gt7CI4nHHFeGutCKMwg
         4sLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NnSV+B6D2H2HjFqJD6lkpT6XpzQ/RLDbEmf2Hsce2b4=;
        b=jfbAChJi3DU+sogf7Np+EglSxgS4MefGIxvkrf7q0xqTUn2sU+DWIvr0NSFxL8ddPN
         tdnkBMfbNcNF1hNxTAnknm+Avr2jcceIKseWHIN+4onFB01IzFXGawzCH1oai/Uk630y
         oRk36IidJKJJZt/y0txKj0voQeWX3ifk9DYP5nJJUuEKfDvSBYBqtyzewoFvYBcG/BkB
         LDniQe4Ekmhd1KLvfQsf5uY8degsi3Soif3V+Athfu1mUhlKhzoDqfNuegHVWmw2fGIm
         6bb72KECbBTG92Gu8v+SAtDcHFO9E32exh+PaDrRCB/pF3NV+xMkKbI6BrOUBXmwbzvp
         LAqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NnSV+B6D2H2HjFqJD6lkpT6XpzQ/RLDbEmf2Hsce2b4=;
        b=ZNKjozjpY6p4lLDaaSiUdaOX6BZKUvWZ4DWg0IfuAu/vUcfZLci0DiGB5NJIRKaqMN
         2yYHx371G6pta2I2qjDEZMMrqjm6jClFsWTTo8eWd2pk0YtqCQpQw/5pmletiQ3i6g/r
         mjgu2WsRRcE1sUtm4tdG5ELfA3eHfFvS84ywtfuo27/SgsDMuUFZ1VD/WSHLGL+JyD1K
         H2DcDLC7GMO15vWjQQhoK0ogGvTfm2u8Cel3IeXpfg9E1OAS3QN+JrcSlPVjI3fQ4oL+
         I1KZuDfZXX2F4s1V/8ukeOxaca3Rev88rkwnHHjGI80tZeEWGYzDGzvgtuVhG9OrGIiS
         xbqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZFM3LmK71UBdyfJYGUQX1OsiYahIgf06WYJBdXm/J/6Lh6JqDk
	hefI/fsbkNsCn97skmAvG7c=
X-Google-Smtp-Source: APiQypJukdTD8ICkZJwLP+qdd5JiY7lNFMb6aFltOzkVdxJLXfdkxW3kyobRdDWTGuTPPRzhHvlFjA==
X-Received: by 2002:a17:906:6856:: with SMTP id a22mr3247585ejs.115.1588691283801;
        Tue, 05 May 2020 08:08:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1a58:: with SMTP id bf24ls1402645edb.2.gmail; Tue,
 05 May 2020 08:08:03 -0700 (PDT)
X-Received: by 2002:a50:e80a:: with SMTP id e10mr3081352edn.204.1588691283415;
        Tue, 05 May 2020 08:08:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588691283; cv=none;
        d=google.com; s=arc-20160816;
        b=PdK3dJBmCSGbqrZI/f3FMO1IJiKtn2A94hLIC0cq4J56TNjr2KzvgIgXVM7YWVNuUL
         rmuERgxbtTv+l4FVSPuKLmYbKbvK+/AG/niXtOad+DJY8fZ7xmXUMUCBIaJkShzy8JoP
         VyMD8MZQKQWw19TLwkHFsak1DuQ3oebLyBJA/PZu3j0lU/OZTvSfH3z4vexhcP6gwD3H
         MQOsjSt+WXpDdB5GHoK0SwjZ1CT0QN6EUrPxooKvQK7FGpenYviT/dp0wmF8vjcUr/t3
         WgLP8vRrUQ3dY02Csv5eeqc9taHunRAA5XwxKfTzzhlLxjr4jLdX1e7mhnfbGf+tIMT6
         vmrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=YabCiOFGIopzFQhWmHfg1z7UEgG6y5v9IK/k6xKreb8=;
        b=IWXFmj2jLO+odG9BPQhKiHE48Kg23NSe2Q7F9PuvM3DYuRF/mfBpYlQF/GxyvocrCT
         WNAB+b+hU3hOsQFL/K7Dvr5GVyykY/otAivLXdnvaB09yTulbbjOAwC4n0KA1Du8Ll3e
         8gUFBd/+1AD0MBF/ATe8/crshTaOBr5zgJIalQ2XIbqdtxfONXckoZUj6dFffs6L6h8E
         PjqBxfTzBH5RFMCQKM/z2Swu/Lk+W3pZDLw76W6SiPaV8zp99SSi0oZNGMwE0YDlVH4V
         VAprq2apAnR6T1PbuYLzAOTXJLC0rOTP1f6fxEf1ppdyGtWwiCPThFdvolMGsN1wkfqw
         bD3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id v18si90511eju.1.2020.05.05.08.08.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 08:08:03 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.75;
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Ma1HG-1jbbrq3Ege-00W1zd for <clang-built-linux@googlegroups.com>; Tue, 05
 May 2020 17:08:02 +0200
Received: by mail-qk1-f181.google.com with SMTP id n14so2569218qke.8
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 08:08:02 -0700 (PDT)
X-Received: by 2002:a37:b543:: with SMTP id e64mr3963064qkf.394.1588691281639;
 Tue, 05 May 2020 08:08:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140407.373983-1-arnd@arndb.de> <CANpmjNNw6M9Gqj6WGTHH4Cegu8roTVu5x6Vqs_tCBxX3gPwL4A@mail.gmail.com>
In-Reply-To: <CANpmjNNw6M9Gqj6WGTHH4Cegu8roTVu5x6Vqs_tCBxX3gPwL4A@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 5 May 2020 17:07:45 +0200
X-Gmail-Original-Message-ID: <CAK8P3a01jV71_EzaCkaZgG51vnJ+x1c192dZ9efEKTawF6noDQ@mail.gmail.com>
Message-ID: <CAK8P3a01jV71_EzaCkaZgG51vnJ+x1c192dZ9efEKTawF6noDQ@mail.gmail.com>
Subject: Re: [PATCH] omapfb: don't annotate dss_conv_list as __initdata
To: Marco Elver <elver@google.com>
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Allison Randal <allison@lohutok.net>, Alexios Zavras <alexios.zavras@intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Enrico Weigelt <info@metux.net>, 
	Thomas Gleixner <tglx@linutronix.de>, linux-omap <linux-omap@vger.kernel.org>, 
	Linux Fbdev development list <linux-fbdev@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:gxXf+KpJpeKTLkitBn424h9flcMY48bC2VUbV2CJd5OCT+ez9RS
 P0ZNxgRkRKlbjoUNvBBWhSB5nuEWLzKXHeMu6izVxni1VbAIHDUxfm4nTOT9G43GMLLC4fv
 qQX7L2s9wiCt7LbO+Byh728QqGHGAkheukIf+0CUvOWo7U5U6PsrUM3o1QmJAELgiKaf5Fh
 YEcV+VDrl2LK8BivwJq2A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:mkoNylV14pk=:JEcaK90CqOzt488kueGee2
 ScM5EsujoXFNrjGy0Tow6bXPVOwCVzltxqNN23/SobcM0THVzUpa2RVgi+eHmoS9ahMbl5sIl
 /IkruEE1rk5r2p+MG4AyjZvTKJMRAoerhYZOtLTS+9LZilGRMDjWspCeE3RkuRNMDzbnbeQGA
 0DT+np2LAOkn4CX0EVEIT6Vqy46CuHkP5FBPixAfo5AkJuzikI48Tq2Bj2GgnDNu+Sqf2bmmb
 mKHvIYgOsa4RU+4zsteEK0hZMwJQS3UGIx37J1p6brPzWOs63pad11Otw6vw2Vx2K/esCe4GC
 I0XU+T83cNiTSXZc/oP7LEka2+JJE9eu4DVK6K87Qb6trvEcOK1KdbIF/S7P58hJGqjZtoxtD
 zXtPWMInsR6rLE6uvBzhyzPEOOIXeAaWq+POyAFhanqYs8xY1w7LeAl5/Zxohp1e/f2uX9Ytj
 eQSL4QWv3bTq4GbLnFWz6IeHKnP4jXo89G5SvEKTuSJfEELRlgPRJI6dRYKwD6cP0TQKgSrbc
 vraZvtPvJYkgnYvXhSjObQQ0zvZlEi4C+nPud5zJqIfQTbJdO6fbzU1R+t7NBu0DA1snxLfiS
 lfCqion27VlEE5qB//iXafDk/NavlYNCjJ77yl72+VPsSGMMq9p532/9RoseRWF60lQjJj5c8
 XjV+9FT260jU3nadBq9CZoKGSJSw1hLunaHEGbkk+IRAmAKaklph+0l+ApSvhD5IuZkuMd9bu
 EvrO1+y7LqTPakxYoOd1mkOlZB5fdqyPcDg0FVXgsi5OsIhqDfslkQN5w/wPJzpWL+7WIYEYk
 FqTDnZ2YvCbW6Myzwt33Hq9dFtn28w6KPVsd3TG8C5W5bEyIt8=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.75 is neither permitted nor denied by best guess
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

On Tue, May 5, 2020 at 4:12 PM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
> On Tue, 5 May 2020 at 16:04, Arnd Bergmann <arnd@arndb.de> wrote:
> > With the kcsan changes, __read_once_size() is not inlined, but
> > clang can decide to emit a version that hardcodes the address, which
> > in turn triggers a warning for dss_conv_list being __initdata but
> > __read_once_size() not being __init:
> >
> > WARNING: modpost: vmlinux.o(.text+0x6e4d7a): Section mismatch in
> > reference from the function __read_once_size() to the variable
> > .init.data:dss_conv_list
> > The function __read_once_size() references
> > the variable __initdata dss_conv_list.
> > This is often because __read_once_size lacks a __initdata
> > annotation or the annotation of dss_conv_list is wrong.
> >
> > This is clearly a false positive warning, but it's hard to tell
> > who is to blame for it. Work around it by removing the __initdata
> > annotation, wasting the space of two pointers in return for getting
> > rid of the warning.
> >
> > Fixes: dfd402a4c4ba ("kcsan: Add Kernel Concurrency Sanitizer infrastructure")
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> [+Cc Will]
>
> I think Will is working on a series that completely overhauls
> READ_ONCE/WRITE_ONCE, also getting rid of __read_once_size() in the
> process, which would make this patch redundant. If we can live with
> this warning until the new READ_ONCE/WRITE_ONCE gets merged, we can
> probably keep things as-is for now.

Ok, let's drop this one for now.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a01jV71_EzaCkaZgG51vnJ%2Bx1c192dZ9efEKTawF6noDQ%40mail.gmail.com.
