Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBU4FYH2AKGQEI3AZK4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6CB1A44CC
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 11:56:36 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id o5sf632335wmo.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 02:56:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586512596; cv=pass;
        d=google.com; s=arc-20160816;
        b=nG1aIHQUestpyXcHFdGos9qrXIjTw50KErPzDx7nUMJJcycATzlDBGLJ+/t64Lcq3T
         Ip7BFoXc6T1csHBTTlTAZPM9HtLr3JXs2TydXZoY6IBQM/k31e2wpy/pZys3i708eWs+
         FQyQrmnW+LCSt+qskAnE2gS2hHzMs//pCyREADdwrtSoL1DNzJk8SRtGu7VSZXqFwES9
         BHJR0MwjMKPCZKIylaAvj71HUwRXA5EliLmFcnm0VsmdYkIN0p9JfBQH0bOG30R1gr9Q
         KvghaNrNrvCYiMmNIXsmYSplRMKfu8exTGWctAmUOBOlqRe0tXtkx9/XGC4PTgxYSsbZ
         fRsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=5pRkpdMMtql+Br9imSBvbdkZREk1dLgoASkv48CjStQ=;
        b=XsUefZhzhYTJLah0Mur6Bo9c1gu6wr/WiwOQV3hHsJ2XfhySH2GpL2XGDVsLEkj/Qm
         whL8JjtWP5tH5i+okwqAhbY1cgR7Z9BUzns7yguhH8ZyZBLKXXT9qTbL7epVxJwvOcTp
         zutVv8izaCDcOCMROCgmubK4F12Mw/t2xUdRInVL+z/va9E+F9JMA0TbJPMJIjupxirE
         xrfpBaj37qKT6sVyU0+GU9LE00Oc1wksczxtsCpLfdSxpGMz1i50eIZgNYHo9i5T+34U
         mQeRCdzEOcG1IDtw6C/bdN1p9HNc/D1cnwXoZtkHOPlZYJHX4VjFfKhW/0KNaChCRpfB
         9yZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5pRkpdMMtql+Br9imSBvbdkZREk1dLgoASkv48CjStQ=;
        b=YUC4VR7Tt7oSsMnVMEH1DYp4q0+d9jdZ/dfQhSefdnvE48Ytir9IkLqFlW3E/0p1eB
         ++ieM/IfTdpoeN+47lpjfEVv3kGNryoBtYvkE6jAZ3kNjbumtkW6/I8RinJNnvWPZu8a
         Q0LBfoq1rzfomYZYCsWcg63LcpjJM3P3p2rkSloWLtU7R75tCuh+l5ddFg5fEsR1q4iP
         uKIlMEq8it4cpTtN8pVG4yN6ztatVczDDw+GKanzZCoVLkDP2YzNIaC2XBm5v2toN/eh
         WVRFJjHUBAiAit5EyXYekJsU6Kn6du7j+kMaUF2idC0DjlhpRaLGOT9OSyzToTRodJrH
         4sTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5pRkpdMMtql+Br9imSBvbdkZREk1dLgoASkv48CjStQ=;
        b=GngaBG/nTVQJ+Vbl5R6I0KXU5qxVi+IWrZLVTSbWgJkCthx7nHbhr4cPvgl2dwbOVQ
         xktBNVx6ExSohab1lNgB3PREMge16PcXKtMZwLEjV6EyxJCnx3tl/oc7qjM8AHK6wGfq
         6o+z77Wlq5ypGxWw9OpS4oRA2/gyi/WaJOx5Lj/LluG5BFnZ5M/XRl1q9/DvailslhbY
         7iDETScFsiY+pLZxx0pK+9xcs0ON49ne6+8JS4LbzEm4z5JPxQM3jM1f61BQQkgB2+ks
         wIXlgos7amB6gvNjja5WwxXJMG87lFuq3J+dt5zZ8kLIw/Og7qlQM/xEguoEc0JdBbYJ
         SQsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYpM+jiWNRVQP2fix6hY0JhdWscxms0FDd8oAnRjPHKKlWG3bYb
	2p4IGihhDd70rBO78sd9x1s=
X-Google-Smtp-Source: APiQypKAh26vE0c3HHepN96bqE98j+f8o2Z4S+hp71i+E87mIiG/C4lZtCvXynSzRIgNX1SBtlOy8w==
X-Received: by 2002:adf:f88b:: with SMTP id u11mr3756611wrp.84.1586512595963;
        Fri, 10 Apr 2020 02:56:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4690:: with SMTP id u16ls10401343wrq.11.gmail; Fri, 10
 Apr 2020 02:56:35 -0700 (PDT)
X-Received: by 2002:adf:f750:: with SMTP id z16mr1524796wrp.115.1586512595255;
        Fri, 10 Apr 2020 02:56:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586512595; cv=none;
        d=google.com; s=arc-20160816;
        b=bn3Uz3nAXvWL4JY7ZLqHDuvPAx8JCruPzhhnKrIk2tAPAAOL6jirmAiut+y2POMc/Q
         b/z0bmsdaGd/SujhXoKom/GDw6o57uZN3BBriC/idmcH2wjg8yehjDlEc2OxLFFypHyp
         smCkbPw68Wpv2Sw0ACEod54ilxevY1uAPGllIjtnX4mkaqt6SBXo/ZCbxlRUWWWwhLua
         3zTFoe2LKVhKtzQeu3gNzszkPFaSTCh7rW/BuFZ4Zowy+ZrFXgY4uB5LynTdR4GSr0Xy
         wg3ObcEK81E/62nV9G7mM14khpWft8hnFawY2miaE6FaNuolwCCVucndmK4OV/l7azSB
         IfHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=Mph6QgrJ/xrgnWVAXMDXg6jAQJ4ZS9AX8V+syWXWzv8=;
        b=G0yq8yRmB5wuimDIWqLv51geEb9rhtI1OBlevn3GU4zYEaSIOpSxFwYqYjwqPaZbmb
         cxBsvpk8RJgHDBoSEUUfASp4/d0bpsx0Vt57mzRg6wYlIvdcJoHLc7ncj7LHiz1eUC8U
         Zn+6RNwBPkG/+bBOdlLzyoYefS5UU+LjbvO5SEnVhW+AWR0RRnhMy+Un+/dF6zr7h8dK
         aGz7ugbEhbZWa7DpaYgcE59PXESUvwDiPDxltBJVtnGml7x6odp5fD9im9UiV0H2AXn3
         CsejvKuuoFXKko9MgFWz5C7Csi0ZqDhPpakEfAtLwOd2HfU6m+j4AwYCYvWstY5ZaqYI
         aj6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id g70si299226wmg.1.2020.04.10.02.56.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Apr 2020 02:56:35 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Received: from mail-qv1-f42.google.com ([209.85.219.42]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MPGJf-1jda2B2k2v-00PgTy for <clang-built-linux@googlegroups.com>; Fri, 10
 Apr 2020 11:56:34 +0200
Received: by mail-qv1-f42.google.com with SMTP id v38so692303qvf.6
        for <clang-built-linux@googlegroups.com>; Fri, 10 Apr 2020 02:56:34 -0700 (PDT)
X-Received: by 2002:a0c:fc03:: with SMTP id z3mr4142553qvo.210.1586512593511;
 Fri, 10 Apr 2020 02:56:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
In-Reply-To: <20200409232728.231527-1-caij2003@gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 10 Apr 2020 11:56:16 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
Message-ID: <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Jian Cai <caij2003@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Manoj Gupta <manojgupta@google.com>, Peter.Smith@arm.com, 
	Stefan Agner <stefan@agner.ch>, Sami Tolvanen <samitolvanen@google.com>, 
	Ilie Halip <ilie.halip@gmail.com>, jiancai@google.com, 
	Russell King <linux@armlinux.org.uk>, Linus Walleij <linus.walleij@linaro.org>, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Doug Anderson <armlinux@m.disordat.com>, 
	Benjamin Gaignard <benjamin.gaignard@linaro.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, "Steven Rostedt (VMware)" <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Tejun Heo <tj@kernel.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Patrick Bellasi <patrick.bellasi@arm.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Dan Williams <dan.j.williams@intel.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>, David Howells <dhowells@redhat.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:FKQyzHm3IJb1e1j6cWGYr4Tpd+ida9CK/XNuQnHoaFJGcw4VvQd
 dhUz5dInir9gfhGT6cYXebhQnjeO6/xwCn5kky3T7tt/JFyHqm0Qnsa4sd+wUszwrLvno0v
 Tj+FBcSTVic16k+qQuNUvH2MjDH3dlyyswUm46U/zoLAbuesXg2XxFVC3xG6PaTKFNHrVeg
 Q4Eie8Prq4xR1qTrvKgGA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eN5J61Ur79Y=:3D6znUOEScb4oGTxdBhg7t
 DRb/D8FQE5zNpJQwFKT9btcsmhQNqGQW8Kz1sGMmnSSGT1u0UBt0wK63Kw/Vf6kmQz5sjpL28
 jTxgHwnVFpjM2pSkdPzDxqqzFvn5GzkdoCMql4ggsDrfpqFM56cLSJDlizOJCj9/lM6SIB5aK
 1JeJibd8xI9Rm833eFPA6QcpF0hocHrV/FB5RUttiD0GPsvMOpiX+rDP0WZp0kT8VmAKQz1Ew
 PZklG76+CyjjIibes3fv6ITbfUkDoxq4Psd/o6VdkVsFZkpGBs7p0nWwXvbgLjqC6p0oIr/YP
 PYg8EH383AdfqUma6HRJLfHRqv9yUOc04wIz4oUmseGA+ihRG02GLRcmeEEKCx9FV6ERKXcI7
 4E4TEuOMIHeCvUerZw0iJDkZpYnKHOABFyfp5J8+3aF6sGfslXSy402m3rxZbWIyGmyRfWjQN
 OTKWdsq02a2AsoKyGEHOvEr5/xmg+xa4Tqurr9yuDpr7i7Fex56FSGuFieQNQZLGP9DtwAE6U
 xUoF9478OI2n9ndu26oMdLz+5knz/0J/crW2+px7EvlraDIBSBUIpJ3+OEVpwMJ0BCYofOS75
 wocEw7leqKtmveQjbnWEYqP2+AMV3ePJD74NJ8mbtaOd4mHxTG/KuEldT5bumeBOVh4La0X31
 mEBs2lx6vURhmnqHMAPQQzFDRbn3olpqPOoHpdzLTJUeeD9vk2Wxdn0D6oviIe/Tikg1P9J8S
 ann58E1advx+goVn7rL3wi9QPvA5wsId/JEncOInu5cigp5QZyglwoqpa97f78gozYrUp8F1N
 jS2JeFjGKZtME38HjZY3rZMUdb2wyH9XE3NU6DNtYPKSDQJOxg=
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

On Fri, Apr 10, 2020 at 1:28 AM Jian Cai <caij2003@gmail.com> wrote:
>
> iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> kernel.
>
> Signed-off-by: Jian Cai <caij2003@gmail.com>

It clearly makes sense to limit the Kconfig option to compilers that
can actually build it.
A few questions though:

- Given that Armada XP with its PJ4B was still marketed until fairly
recently[1],
  wouldn't it make sense to still add support for it? Is it a lot of work?

- Why does the linker have to understand it, rather than just the assembler?

> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 66a04f6f4775..39de8fc64a73 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -804,7 +804,7 @@ source "arch/arm/mm/Kconfig"
>
>  config IWMMXT
>         bool "Enable iWMMXt support"
> -       depends on CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B
> +       depends on !AS_IS_CLANG && !LD_IS_LLD && (CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B)

I would suggest splitting it into two lines for readability:

       depends on  CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B
       depends on !AS_IS_CLANG && !LD_IS_LLD

    Arnd

[1] http://web.archive.org/web/20191015165247/https://www.marvell.com/embedded-processors/armada/index.jsp

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q%40mail.gmail.com.
