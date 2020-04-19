Return-Path: <clang-built-linux+bncBDZIFAMNOMIPTXPP6QCRUBBVHNIN6@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8212C1AF78C
	for <lists+clang-built-linux@lfdr.de>; Sun, 19 Apr 2020 08:26:01 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id y1sf3712136wrp.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 23:26:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587277561; cv=pass;
        d=google.com; s=arc-20160816;
        b=sivXwEy+7WR/UuQBiIPp3oif5cqiVDdi9wqzMF1iI+S484UVsYKYAaRvdLcsz0zHu8
         2AM2Of18FwYXWzOxuq9fvDKXuziWXxL036/c3WJPzGbcw8SE98DsJcC58TeRw7mjoADD
         cyZuEJRWnOuLHMg5kmFw7iMeiZpDKa6muqot5DXQi6rXAuiASy9DRgwInuVNHC22SdAR
         3nXWBR3RNtRQhRn3yNo0p0LV1heo1pOpiEfDp4bNNdqiPEMmMhbFu/JXULuPRAJvp5k6
         d9ScGv488sNHWhg4GyYLduWnia1cNmTl+GTm+0ePmKO8L9iW2MYCZh4qFWrHYjjyloqF
         wQiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:mime-version:user-agent:date:message-id:cc
         :autocrypt:from:subject:to:sender:dkim-signature;
        bh=ZiIrITiMNCFZ/9raK9OAn1N1mqHMkp2JPYyzyRWwzYM=;
        b=EKRuM439BNfKJyrWRg5DJfdch1aLRoWwD3ENYq3LTEoRZZAD1na3vOgCcYtnXo2PLP
         gt3MRYe6dEgjoJWqF1uMASxi0mNzwDgjhKHegSqmZ62GrLyKv3eoLXzu5/MRV/QWxyh1
         M57BnJlPcHOWuIioaJkIl9ewbiwX6XaKv4CJQQlUnjW+mSEruZA6qe9w55sWnr8+JgZf
         33bz3VxtN8kc3eBQQgUVsTYtW/zB4V2j0hH8lE2If6LU81m1wdcJDRsLhemEh+WjxiRM
         7EOrsilWo3zZwx/oWsLjeP0NDkqa96z+SWZQ/Tr8nod0TdE3hSt0QKGpT6Hv8FMNpKis
         6GBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=Xh1rc4a2;
       spf=pass (google.com: domain of markus.elfring@web.de designates 217.72.192.78 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:subject:from:autocrypt:cc:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZiIrITiMNCFZ/9raK9OAn1N1mqHMkp2JPYyzyRWwzYM=;
        b=r3+Nrx2tiD6od+bUR0EjulaXsrMgq65+vunQ/MhxQiMBbwguU5uRUvQtfot/8VRR8Q
         9NTux9k7/ZXsSi6+rO2C22ewDqRmllJjEY6OgV34nBLvNB3sAI1VvrxmNFyeTBDwV/Gd
         b7iT7aFW3ebqriuZQ+HrYU0vg2ht23kUbsOCqL1QRZ9Lj5oqXKWNy0zTTuKrADvP25aE
         uBLVboqivHVKrkhx/Zsg1RizTqrAH4Smkz+xDBGrwSz5aAP3Ndxt8MFbKQY+GzuCMHne
         juNpCNRatslZPgGevYp+DZlVfhprKrPd5vvx09fs5kTsPrC17BRIAalehHs7JiDZ6xfP
         GUfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:subject:from:autocrypt:cc:message-id
         :date:user-agent:mime-version:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZiIrITiMNCFZ/9raK9OAn1N1mqHMkp2JPYyzyRWwzYM=;
        b=C+ldl39m1b21THEwEUKUwItOUTaJJtEseAhQ/GUTUoU7Mk7RSKcXkxqeafgu/YrXzJ
         IVxaZcgT/Ds3mjesgjygT6fzYXf5a75aoUXp8OV40EbxtdrmW9u5nvs1lSCM6ke1OVcc
         Z7+FL4H/zvPXGRUhGFzHB+ZYeEcXk2MldS4D3nttldVSSGuzabKcKzmm7kS+opVwEhEF
         PAPoHGy7KEsKAnVxqFL4o3DeVhb4chm3EOEAzFhdVPTOWOaRYkH3kuwjtUYsBPu27Qon
         PKUS3zVsiAMIFIwPjHvbdXnA+Hp1LbG/vTOWf7Sl6VfU0DbOwCZ9tZgNCHKyNKzC416o
         ZrfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuavOADrROmL2vEgKchx2TLtr6Q5MsV80XGN94+vL2zMoJ9WrqZi
	qNFHGQA2qdzF14D+b5sEyHE=
X-Google-Smtp-Source: APiQypIkRBu6YnR1ep/KskgAmkO6X8eYpkoulEEx10qr3MrEbP/GK4SHghtg4fLRHCVr7WbGseyR5w==
X-Received: by 2002:adf:e711:: with SMTP id c17mr10951200wrm.334.1587277561239;
        Sat, 18 Apr 2020 23:26:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:e44e:: with SMTP id t14ls8036478wrm.1.gmail; Sat, 18 Apr
 2020 23:26:00 -0700 (PDT)
X-Received: by 2002:adf:cc81:: with SMTP id p1mr13105635wrj.372.1587277560832;
        Sat, 18 Apr 2020 23:26:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587277560; cv=none;
        d=google.com; s=arc-20160816;
        b=Xdgv4v+/QPg0H3KZWG3lN+WF2SjsPErv9IWarJWy4PvefiQcEc55ihdpfj+GlX/rR7
         Ph4DlgK7tUywHzFn2kqTu70T26AwnVSiTpGwWO8Jcfjp7gcn9L+GEjDVys3YTGaMTuek
         FcKeNlFIe/TTouBvBHgeha6RkaVRfaNEP5GcRWB0BR6ntGxoqGWMQujjEZQHHyfSLgF0
         VQaRg4FsZUB3nu8YUTASsDNIEyLpvXR5m7QpgqdcWgOCKb7Hy58eLUAS/BDkgVooQGN5
         dKL2dN6hQHY2U+Sl8CU1REfhYmCf/K8kPseVVnzjTO6lusTIt9UYNSyy7LvP7KiC9HX/
         Zu5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:cc:autocrypt:from:subject:to:dkim-signature;
        bh=2Jc5ETSxqq6NYY+alx24tGIp1ggMXAYlh7YmjtD5qYU=;
        b=ViI4Z9jbdS0QeQnp08siOzvuvOpoW3FWoCps09CylDKl4vydnpkdgpoM7GlCQ1iqQv
         vvPKB5q9rZD/Mx4rzOWsQMb6Qb065kcjrpAnxBndvyFqjUYI3gSYaeFGmjtSR59nej6P
         nmy6XrtPraguuR/x8+52ZkBJjD1Vd0YrDuPD1xGjaicmDMXugMHmNX6R6NpV4sNmdJ5r
         G35OtJi3BrZKII/rYfJGhYAdG7cLPHf+Rziy9Gsd0dftxZetQDCHCrlqNQHMfrXGwR6x
         rJGYZ91qKDVNGfIjFw6FOhifu580F3eN8O/HwsOkKjaK/+yIW4oOjSi4+IPZQSWV2pcL
         wR3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@web.de header.s=dbaedf251592 header.b=Xh1rc4a2;
       spf=pass (google.com: domain of markus.elfring@web.de designates 217.72.192.78 as permitted sender) smtp.mailfrom=Markus.Elfring@web.de
Received: from mout.web.de (mout.web.de. [217.72.192.78])
        by gmr-mx.google.com with ESMTPS id f129si478453wmf.2.2020.04.18.23.26.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Apr 2020 23:26:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of markus.elfring@web.de designates 217.72.192.78 as permitted sender) client-ip=217.72.192.78;
X-UI-Sender-Class: c548c8c5-30a9-4db5-a2e7-cb6cb037b8f9
Received: from [192.168.1.2] ([2.243.85.208]) by smtp.web.de (mrweb103
 [213.165.67.124]) with ESMTPSA (Nemesis) id 0M9XM3-1jWsci0q1X-00Czel; Sun, 19
 Apr 2020 08:25:11 +0200
To: Dmitry Safonov <dima@arista.com>, clang-built-linux@googlegroups.com,
 kgdb-bugreport@lists.sourceforge.net, linux-alpha@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-c6x-dev@linux-c6x.org,
 linux-hexagon@vger.kernel.org, linux-ia64@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-mips@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-snps-arc@lists.infradead.org, linux-um@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, nios2-dev@lists.rocketboards.org,
 openrisc@lists.librecores.org, sparclinux@vger.kernel.org,
 uclinux-h8-devel@lists.sourceforge.jp, x86@kernel.org
Subject: Re: [PATCH v3 00/50] Add log level to show_stack()
From: Markus Elfring <Markus.Elfring@web.de>
Autocrypt: addr=Markus.Elfring@web.de; prefer-encrypt=mutual; keydata=
 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 FEE=
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Andrew Morton <akpm@linux-foundation.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Ben Segall <bsegall@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Borislav Petkov <bp@alien8.de>, Brian Cain <bcain@codeaurora.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Chris Zankel <chris@zankel.net>,
 =?UTF-8?Q?Christian_Borntr=c3=a4ger?= <borntraeger@de.ibm.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 "David S. Miller" <davem@davemloft.net>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>,
 Douglas Anderson <dianders@chromium.org>, Fenghua Yu <fenghua.yu@intel.com>,
 Greentime Hu <green.hu@gmail.com>, Guan Xuetao <gxt@pku.edu.cn>,
 Guo Ren <guoren@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Helge Deller <deller@gmx.de>,
 Ingo Molnar <mingo@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 "James E. J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 James Hogan <jhogan@kernel.org>, Jason Wessel <jason.wessel@windriver.com>,
 Jeff Dike <jdike@addtoit.com>, Jiri Slaby <jslaby@suse.com>,
 Jonas Bonn <jonas@southpole.se>, Juri Lelli <juri.lelli@redhat.com>,
 Len Brown <len.brown@intel.com>, Ley Foon Tan <lftan@altera.com>,
 Mark Salter <msalter@redhat.com>, Matt Turner <mattst88@gmail.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Mel Gorman <mgorman@suse.de>,
 Michael Ellerman <mpe@ellerman.id.au>, Michal Simek <monstr@monstr.eu>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Burton <paulburton@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Pavel Machek <pavel@ucw.cz>, Peter Zijlstra <peterz@infradead.org>,
 Petr Mladek <pmladek@suse.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, =?UTF-8?Q?Ralf_B=c3=a4chle?=
 <ralf@linux-mips.org>, Rich Felker <dalias@libc.org>,
 Richard Henderson <rth@twiddle.net>, Richard Weinberger <richard@nod.at>,
 Russell King <linux@armlinux.org.uk>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Stafford Horne <shorne@gmail.com>,
 Stefan Kristiansson <stefan.kristiansson@saunalahti.fi>,
 Steven Rostedt <rostedt@goodmis.org>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Thomas Gleixner <tglx@linutronix.de>, Tony Luck <tony.luck@intel.com>,
 Vasily Gorbik <gor@linux.ibm.com>, Vincent Chen <deanbo422@gmail.com>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Vineet Gupta <vgupta@synopsys.com>, Will Deacon <will@kernel.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>
Message-ID: <510426be-c95f-adea-af6a-51e592f41ce0@web.de>
Date: Sun, 19 Apr 2020 08:24:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:fiBSRO5JZPPBGS/b+P/QruwXKgWy4xjJvI1a3z6iU6xtTvYTpCB
 pGORkj/vSYtLOKKzKGbFfcSK/Mou5mOeNdeChPpnGK9+R6cV6V2QZpwk6eAyoINjSlTLuMo
 Z/VyxDlhjzKREAtaxgxyanMkXCAvYMpuZTmfgusDDU3VdEOSrKPLcx0qIUljlW1Ka1EknhK
 Eqtnj0zaaSVw0Vha1eRBw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ehBQdQ698Lk=:IdmHlujqBKzzQmVyxHxpoK
 DFsD7gY9mP6ek2gQ6rxL1bwYQ1rb5wpstw3lT+rY1bU9hW5itp5hwllJEn+y1i5seCO4fcwLC
 mZMroLfFVhVoOrgTwKR2VXilmctNTk7gJJQpMzH244yiH8Fz47UF/OibZfphqm0nIvrcwwpMl
 gRz54IhzjzfUL+d7d/zfTucpak3ynHWOKZ0BiWupzUqdU7/korEZsWNpjEcHvCQNT8cfk5lLR
 yQU0yAt431TPKozFgClZBlZUZv32ojrXjMkn4KLCnHcuhNEgT0QgjmTtTgHqEg3eExyILQsvc
 70eUl/OzAKzn6eeQOZ8o4UBMt+T8aB+sT387dq2b7khis+MP0w1QWLS6AKGCjIIljOtBSMVps
 A3wbsAnJyLPAwOs/5pmMYVaosln4zLgVju3A1Hj184A0HVCRWS0Ev/Jiukh8CazfelYhw4DVC
 LwpEsCuJ+BzliLsh5HQXbcLaSzSV1PsHks03z/kz93xBd5emcXaDXdyMOcPWC+J+ztYJ057Cw
 FmuJUbfnbCyBHAmcOdXQ2L0r1VGVQaHzsYmhwLjVRqJVhZU2Ir4q62yurjtctQkq5CF43SHAS
 r6HtFH3JuYVJnWkjNGRgFjEFerKMtvoLkJKr01VQEYpJEzZyUI0RlI3bMBNZFWnodsTzAcUh/
 G9j4BmCAP1sQMVpn+WjR/Kx/lFAHk9mNgjgBMuY1XOyOCwgSIwb7xRY4gNbMeU68nH47zH4gj
 dXwbZvnaZ0fRI/0H0w/SDpG9S+QIrg6EHeBdHvuQc8Id0cqP16ebg+/avJDTFH3QZdFalU7w6
 3lDZc7cqKqaMFwg2+zdEjIz2Nz5WbX5RaeJfFeRgx06rlgyCR95Tr8eHjOJucwr/OAYDRx1lN
 02JAqSH42LB0gjpvYRltpAx5o17WFhohio2K+8WYlrL2O7wOai1CsBWdxq6sNfrzBJH/epsOi
 HWg2PMyaUccn3OjxKLf7Uf91fCAQbnFMa0+DhJVLA2U7AbbwhoMpVJ0cDx6sEhcPk4PTjPlT4
 OWr3v5qv7OmtFlIcgGGyvMpc/ODK5bwQBcBsKDKt3HnH80LR+OUURQxbY26ROGtKsdylfz0zu
 CnZ1aBsnFtd/p9jeOSUUh61PAUtgD/bKd2E9jIq75VtWI316Pz04pvz9Wfg/eKimP8IMb4aCS
 tu+XVeQVahy9GAnATDTXNXqzET7vzkpRPlPAwcGWtvpMuKBV5pNuWHCGLcKJ6Vv4DB3VDSeD0
 d4zoddkIxnUJnaDoQ
X-Original-Sender: Markus.Elfring@web.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@web.de header.s=dbaedf251592 header.b=Xh1rc4a2;       spf=pass
 (google.com: domain of markus.elfring@web.de designates 217.72.192.78 as
 permitted sender) smtp.mailfrom=Markus.Elfring@web.de
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

> Changes to v3:
> - Collected more architectual Acks and Reviewed-by

* I suggest to avoid a typo in this description.

* Please separate the tag =E2=80=9CPATCH=E2=80=9D from the version descript=
or in the subject.
  https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/D=
ocumentation/process/submitting-patches.rst?id=3D50cc09c18985eacbbd666acfd7=
be2391394733f5#n709

Regards,
Markus

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/510426be-c95f-adea-af6a-51e592f41ce0%40web.de.
