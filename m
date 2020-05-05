Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBU4BY32QKGQEB2EXXFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id D27CD1C5A71
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 17:05:55 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id f15sf1361089wrj.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 08:05:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588691155; cv=pass;
        d=google.com; s=arc-20160816;
        b=YBTqJLNcQh3Z7DhAj0aFu2u2Ly9flIYqnxt3O/AYln2jknPYUxp7OhZaduoHwx2ngV
         U4ha5LqBepuSJ/sJmAyCS+XFKwodJQpC9wlpeR0nlaRELdPuFSBqt6MIBSbjdcgk9B6B
         nAN97xZPpXclbHGMGOzh8VaBf4JFMpMcxDCMWiKamer2Omhi1ZnxidrxEfupyxygdAfI
         r9VoKeFjNpKVAgz72/65/qC4d5cOE1UvVfT6CWCzj29tLaXXVf+I2Mxc3uCnjOwI9M2Z
         w1v8Ll9GLsuxqUClWaDHxVH1t8lF+0+DS2i8TTEjKvI3ACi26pYK0JdAFiD1vJf/ptD3
         hFzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=agPmZLkJpm8I2/uf56wz9+bcPRJBwUA/PPb54ZTl7oo=;
        b=dJ5YU/SVvJqiElmVzeui8JJz+VZPuF9xK8tyeG1B9vI8Sf0gwLtOSMGDqKgg5gxfNE
         ukYR6zyLzXEiXPd3AvXSWz9BXrj2AI21GN5gNLL7xzJDFHdxwNzlmy0Yij9kMgS4dv4R
         qvKixvqB49d5X3udQYTqOX0nv5fpW0FSTPaltEFxU4zJHueVZr6ZfgptL82M4URd6CwD
         RQC3w7TigLW6PcB5pefAhsSuinkjb9NAlzZJ1LQ2NUUneA3LRnsJxnv2GkoBSBvbw6yX
         ysG9wJ417FNqwUzdfjZPsS5n1ZrLoT81IekLzJ/uEru9wFXsxpmkEtigH19xjG/4zhIS
         NmXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=agPmZLkJpm8I2/uf56wz9+bcPRJBwUA/PPb54ZTl7oo=;
        b=a/vGUf/Vzx5zOLjS98EAxMC97BK3tgWo7tdvl/iHtUkWmTVt/oNmGQ3WRpmPWujfDq
         KRa/JZD4uL6JbdxXqoLgLyhIDLFIJJlCKiGrVBf4sSLP3xhVrlMICplp8lifwcILQ32w
         rt8Ci70/nrxB30cslN2ERoeXHuLifnWSI+YlmhbKvyKKPTJ+xtq3bhac+wxx5ED0/nhJ
         /7Dwz4OPjm/kIssVygVTB7sRbiIeUD+kW46yLM38qRyLj+PB4RLuZrsJJ4+AeTe4FJKM
         /dn1bWZJEZRhZiUiGRQ+sj3i4BZf6Z6vsmtor51188qcPsMwTSyVz4FihCpJJ4M6JwCL
         1DuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=agPmZLkJpm8I2/uf56wz9+bcPRJBwUA/PPb54ZTl7oo=;
        b=HzLJAlGn2CWz9llJ+8yGae5eczOKE1tblhzD2pO1f3IV0NCBO8m/NZyEOVXrdSxs6Z
         bHD9zne0raEF1HVQFh/ABVNVaYh8UTibYV2yTwyxT8EiVmPIF2K5dODjzhzTOyR9af14
         cfyOJDNmN4LNWcIgtOMrWxFfhlczT2qi9xthiW/pkSIGM3xMosvqcqbavuqpULKHYJto
         DQkegf9aJQpGT+P9HWaNhI4GDdZiKlTNj2nE5vgS2wucFRR36tI4eGov1FS8AYTVGsRd
         22Hl6f+6rOVDa0Q4dHa+9GbLpLCcoVsEXF4DkdhIypE7SoqWlfLPnA+kp4GqDjuWE2B2
         tQrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYcPbP9B8s2LqnnFnRWbu1PKlccXS+CxXoiOa2W0px0+V1bJcic
	DI3Oq65Baa3JaNHUIHPV24I=
X-Google-Smtp-Source: APiQypLZZf2W6o07W6bCWxH0ZYNdHaOA2mlv+quoBnxGFokVBlI1j0Am8DWkCPAk+218D8KNWhdxOA==
X-Received: by 2002:a1c:a512:: with SMTP id o18mr3709989wme.138.1588691155626;
        Tue, 05 May 2020 08:05:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:db47:: with SMTP id f7ls3783883wrj.8.gmail; Tue, 05 May
 2020 08:05:55 -0700 (PDT)
X-Received: by 2002:adf:f704:: with SMTP id r4mr4293831wrp.5.1588691155102;
        Tue, 05 May 2020 08:05:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588691155; cv=none;
        d=google.com; s=arc-20160816;
        b=fgm9lpUjklgF7j4MpsusxFBhHawFSMnqjMCZJfPM/qAZAq2Yqta9iicWGW/0Hh9y1f
         tCwnXtlWzyL9QSv5jcmDoCHw7zjEWbgAhK3xKe0kADaEW4G6lwxk9BDWt9NKtsdIyrAc
         U6Sjr+YJPtaMmMZsO6bjZqaA6sdjlkZkQfbZYN1sn9dOlehgeUuDI+aVrKYLbCcVh38e
         d2QKsnw+hh3nYCqyD3UKLD+K6N4Xw0kICixD+TdOFigw5BK22JgY5etFc7Rz8f72fjjM
         PCPEtLe+lEnk+FGFUVM8818+qDfr20ABGmOltLdC1i5ufAPsTOyLYvvC4o4djkavG0Z3
         Eg/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=Q4IggaNR3qupvIPaXX5WQFQPRF9xxUev615Z/09fcf0=;
        b=LtyVdB6TfY1YyNSmbBfmNJzkisKIwiWd4k3TujyzQgu+Kk1hy7mBhb4Nh+e0iQ9RkG
         N+LWr3Irv2xXNNi8/V87DAh4skDBdOVyzXv/0xrJuKrqyoO0sR7bmsJjfUxhmYZiHjLt
         J061/6tIDEmI0rTQZbXGHUu8IDRn5xpwbjt9bhilL1Fg55kOIW0Dkfn28/Ic7Z71tijB
         7RlUgY5/tCx7XR7op0a0ngsYx+fY4bpUWsBGadTn7z05L370Pjq9+Zozo3se6exWSpUt
         zOV/qpmYAQ9f8vOhESOf6tEubrFJ6CGs6JwIu/cLKkqJ/+/ZctdtOhfa+SXOB2JR++Ud
         WG0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id o186si168687wme.4.2020.05.05.08.05.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 08:05:55 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from mail-qt1-f182.google.com ([209.85.160.182]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MxUfn-1jBrvH22zR-00xuvv for <clang-built-linux@googlegroups.com>; Tue, 05
 May 2020 17:05:54 +0200
Received: by mail-qt1-f182.google.com with SMTP id z90so2158008qtd.10
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 08:05:54 -0700 (PDT)
X-Received: by 2002:ac8:4e2c:: with SMTP id d12mr3185805qtw.204.1588691153393;
 Tue, 05 May 2020 08:05:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141137.665940-1-arnd@arndb.de> <CANpmjNNwgkVR6kjFudrR4ga--PigU5Mx69HZ1mhCAQ0GCLqQGg@mail.gmail.com>
In-Reply-To: <CANpmjNNwgkVR6kjFudrR4ga--PigU5Mx69HZ1mhCAQ0GCLqQGg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 5 May 2020 17:05:36 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3r35VrKVfpn_q2YYhxkvH9j0+3MnMqgRM6R=QOcsE96Q@mail.gmail.com>
Message-ID: <CAK8P3a3r35VrKVfpn_q2YYhxkvH9j0+3MnMqgRM6R=QOcsE96Q@mail.gmail.com>
Subject: Re: [PATCH] kcsan: fix section mismatch for __write_once_size/blacklisted_initcalls
To: Marco Elver <elver@google.com>
Cc: "Paul E. McKenney" <paulmck@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, "Steven Rostedt (VMware)" <rostedt@goodmis.org>, 
	Kees Cook <keescook@chromium.org>, Mike Rapoport <rppt@linux.ibm.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Dominik Brodowski <linux@dominikbrodowski.net>, 
	Alexander Potapenko <glider@google.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:ilyWp6lGDk1Vz+pnbWSaJLl7J/KzoIkt1CjbPBkiKVonHa0BaMA
 bfeE0VBX7SYsbQl3acRMfwlVl0+WF5fM+3hhtW67gt4ye+XOL0sWjPXFGS+Yy7Ae9s5xCrx
 hMOJ48LHT8tdPpDe8XRYEGCaz1Fkef/f2261XTeQrzFVt10qasadC90ioqA5+o5ZoObhfHg
 DRiip9vPVQlkmtOp4ImtA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0ivUFdVhhmM=:5mArBxKwq7Q7qW8Dqa/UhS
 hBtMlbqObsDFbmG2fYxh2XD1DlMtrvVZQYyZHwUxCG8dGY5BBF/SzGLV/udBqdrNJDtxLkmDM
 Qbqt7eHYVaPBWbYTbyMfCknNULyG+xwmmITdz4gRKkWMtwDA4AbE/9n1UoPEsGzAPtV5IXnjU
 NWOCww3qRJga8ljjXXkYofvBNXtZO6B7ZA1DdDaMfD8QBtqvxiaJN8ndher49o2Y8JPDtk9OO
 lpehL2ZMUO+dtxulzz/qMChmgWlV50aPkZOi9o2D+aiV2lIR9arH5YOUbIW1ZgNjEBYWI4U3P
 waFJC9kNdO2GGxMzz6f2DT46x9SozdSN7ouZ14eJreUR2RA72Hcs7DJ3Zqw9L6yOU44qGSqeV
 EdOGU1BJOirYOuhGvAkiRsH4/tzfGywKdHBW7mmPOyso/F3f0+CqMg5bL1B21m8iDl2RrN/mP
 RxhOc6AOtFUgW4LG7kicL7GtLMMof7GOtCGxU2HIBLK/B34wjYI349fc/3imTn0zDZJne5Qms
 F4KU9KWTOoECQcKH0g9H/R6+Yg4CGTxk623p+anWL1wde+uFtbtP7N6JzF7+7CZ38Q4qnPZ3L
 skexNMuyX03DTaENPLR7aQH86LNohQiokDnbQ3nLFWtHZ7V5UBFCok3t06fixA+k14bRuJLYj
 K4Q0NEE+4n2o1waKoTusUeBeSzGxSyFK/USqwDvQsglA4IaSidbZYv7J95H863Tt7o+9duP+/
 NLeRTl/kXQza3fLZ9OfDcU8pB+owUG+fwkpIwE4t0Hd15gdpTTYpRMIlIkakPcPsvJ88B6tey
 T1llPib1ekkLCWttMR22M8x304eVfedReVAR9xpkH5Hqb3gkXo=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
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

On Tue, May 5, 2020 at 4:17 PM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
> On Tue, 5 May 2020 at 16:11, Arnd Bergmann <arnd@arndb.de> wrote:
> > So far, my randconfig checks found two such instances, one for read_once
> > and one for write_once. There are probably a couple more in random
> > configurations, but I guess they are rare enough that we can just work
> > around them like this.
>
> [+Cc Will]
>
> Thanks for testing and fixing this. Note that this may no longer be
> necessary once Will's patches land. Also noted here:
> https://lkml.kernel.org/r/CANpmjNNw6M9Gqj6WGTHH4Cegu8roTVu5x6Vqs_tCBxX3gPwL4A@mail.gmail.com
>
> For reference, Will's series:
> https://lore.kernel.org/lkml/20200421151537.19241-1-will@kernel.org/

Right, good point. If that is going to get merged for the same release, we don't
need my workarounds and I'll just keep them applied locally in my linux-next
randconfig tree for the moment.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3r35VrKVfpn_q2YYhxkvH9j0%2B3MnMqgRM6R%3DQOcsE96Q%40mail.gmail.com.
