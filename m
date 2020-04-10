Return-Path: <clang-built-linux+bncBDTIRUHU4QLBBKX5X32AKGQEOFGXWNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3341A3D67
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 02:32:42 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id g5sf154887lfh.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Apr 2020 17:32:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586478762; cv=pass;
        d=google.com; s=arc-20160816;
        b=sDTgTlcEOgp4anjSbjFyJUWua4sWUl75y3SMUYQlDmGMeLoUd898RAQ3u925W8Ip5M
         B7xx/009p9iiMdS11LVOsrSyCQHjwgpT798HFbxeOOwfRXp/B4tq+Pjy0micwLKF+uqG
         lyIY38NuTK3KbNxpzioHS6snQzDGkIW1mZL2J4nUdvSOxmJDOTBQjXk3/hkbLV4TtQvS
         Ueeo9nmJIy9Oz5s11xjKFSCZtSWL00LTMnOpVzePbjK7g84n/V8OoByho+PyuiQg0Ysr
         +PUa4SAkiRIUz60akVSUOHe+/zHmGLxsx44iKE3c36o2L6zUqwuvCbNEAMKtobgG/ME1
         +bQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=eSrpysLXYwEBu36ldVA0aGBRM2wex3Y+ynj262ixIGg=;
        b=OMA13ntkzV/MWL2C5xYJ2Q+iGiEIHc6/t8XQG4NMzBryrWonbeJ9A4aCzBpF9NPUw1
         GooERz4V9zvxo6bIUUQL9o5qJHQlpj+c3RBNDrvJpkvEuI8fI/Qu1cM1SrfMDZ5kT8CH
         u3/q+M6JO8Ol0F5+BDq+Xj6h6Sl/bKrFprLsYFBMs49MWlivL317S/p6CAJvgH1ugePk
         dk/KhIlzU/Kg4uNvD382ZCtGtGYDmeUN+vSsxQ2XDYlB18lWcAdCuypRePZo1t/oZXKp
         MCZh94SXrHERMPKLAuzkp/Tf/sApb/XTiMAy0HWB94N/2L+tRtIlDatnjtS8J8gaNsQB
         rhmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PBijwYu+;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eSrpysLXYwEBu36ldVA0aGBRM2wex3Y+ynj262ixIGg=;
        b=BR1klGA4KlR7ItZhW1e8eOi1yDPAYuO1dM+Wnotg9XDoUC4umF3M8Cy9S7UMWq+sxH
         mfkjHWbtHXsQvPoUHTfmz7bNZOP1p5Wuckxz6FfyIfbK+lMw5XLyi8W3djfqHT9Ep7E+
         M4sM7fI12ONJAdy07sobjR2092LTTcwyezlQHE2AhCyGnuQdqeizZFFCuBM1IPhl+Lkj
         5sC1PmHCqKfyLS4azYUj5tT8U1RH2/nd7EX7CSJBshHZDXc8dzMgsnCet69Y7ZuuvcUm
         VXiYbW4bfCAc0WieUCHNHEnKB6fZGRVbkqcXdJQvcYn0SAfyTGSdVBXBOGn/XskDpL4Z
         E+jg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eSrpysLXYwEBu36ldVA0aGBRM2wex3Y+ynj262ixIGg=;
        b=C+gzBYMgJSQribv57sVlFdOxSzWNHYMpslpmENkQL+cypNaPbtraKploo8M3FXNu2/
         KQ19MA+oaSSXXC4ywLTu5Z328Ue73eEJD94a7l5RNt0krtUTfx/gQWnnb+bqiLHNcT3t
         hSXBmpAg8cw1XylBsLypl3d6Ho2YArm8qv280nrF2uugG21HG5zMn2/cSnd4tZ56SmMy
         VZv3WV4Ef6F/j/V9HBKINJuD1Dp2yMsUT/rHPR1SX/6IP3i2WjN/OUaLYqF1JBliQpoD
         PpuZ87MVSgWuXjZJ7xbo3JJIqAgnHLmZzh50zzDAEnSWp+jNdtN0thHTS070tyS4wAmZ
         ehFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eSrpysLXYwEBu36ldVA0aGBRM2wex3Y+ynj262ixIGg=;
        b=C5Olc6fL/lnJVSdTpkMWaaIa/kLNK+NyXMTS5DUf2acxA/Djs7aj5LfKjg1f4s9Lpk
         EURYyJ7bGrLFrldxXk5JYW9eUBerfuuVi1U63HMgDLZ4e3TXs0KTtdY2tLwQBTOc2UpC
         wMGEBM5IjFh7AmJzdMKn/zS6Rsa/PotrDFC5lhLP0ArNmz2H+lFR+NDlnxgtKmfly4fj
         Xd7pUi2+hccb0rkchTHBi0WfA8aRCwR6wbcrZWX/2QngI7LgcINBAv77JZpJtwU4b/A0
         JC82apg3H+qZUARQEEgAhmTSbljgSFvLtXaNEfdBbs2iti+JjGDuMWaUd4/MHSyJPiUb
         Exfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ2UnV90eXuicSe02vL+8bMHyLHmzVwM5uFk2UU6ajdNKOnuimC
	Y7Cnr4a+ambTFQaLAy9DPY4=
X-Google-Smtp-Source: APiQypJ1ombX9KBTLho1n9zN6NvVutTlLOHtMv8CqVW+f8soeUMjkWN36RIbt0R1PA7jbZPOQBYRuA==
X-Received: by 2002:a2e:9b54:: with SMTP id o20mr1447303ljj.189.1586478762440;
        Thu, 09 Apr 2020 17:32:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:984b:: with SMTP id e11ls1221156ljj.3.gmail; Thu, 09 Apr
 2020 17:32:41 -0700 (PDT)
X-Received: by 2002:a2e:3012:: with SMTP id w18mr1475026ljw.100.1586478761833;
        Thu, 09 Apr 2020 17:32:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586478761; cv=none;
        d=google.com; s=arc-20160816;
        b=lq6+fSqT+GuAbEnevLdR2MLFRJ+gYjAQvl0QydH0Ih02Ey8bomXmLp05bkKXOUs/cY
         C/hmln1pNH+ghNi9dsGQBO9ARbOzhQy8AQR/K71fVQShe8bKQmLZ2IH2yaqF5ASNSWEZ
         xxK4YmhLknzlAJzkpfl5U0wLT8IxCHzIUw9D6NhpiYx+td5Rlwbp4In90R+zHo6d6opP
         AgBWSv++5VE9zW/+hGAWHfch3H5hqTEi+/4Ofu0YhwNkI5H3/vCZg1AG3U2oau2WWEs/
         ysuKZuPVn/kXIE2ptIhPNpo8ElohPi2PP6BggNYstoSqT/M1kkH6p/DuN7x9S1nInlZC
         2Gfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eSEsLQpP6ydoOgsHvybB6Pxz50vwvH9Tno9gZKO5a2s=;
        b=FyfpzeRQcF/qTlbZNXhMMzCmRFEdZqbyuD+5UOM7cG/BTJ5vhzPBmJ2EXFwnsLADAA
         kkticoLpOyFXOk/8fmFofjseSXD3TG5HktkUkKoerxfxA993LAYL/25WpSx0xQudEz2E
         T3+ONrYexlxcpJ84bLZsLPOckudMUm598Zcl7JD07TmJOh2O5txRnZlUbAls/CVkDWcN
         QBQVCB3n3Vs9VYehOph4xgkt6Ys+TDMTGh9LLE0hy+Sl4I5kRjnwytWDV8VsID+aNDHc
         JvDLf2WRBOfxHbv5d5DyHIDucW59ZGi6LJO6lzg2qjgA9YJNgOSK6b0qTJBCvNt6ur+k
         emmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PBijwYu+;
       spf=pass (google.com: domain of caij2003@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=caij2003@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id c18si27176lji.4.2020.04.09.17.32.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Apr 2020 17:32:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of caij2003@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id h9so459179wrc.8
        for <clang-built-linux@googlegroups.com>; Thu, 09 Apr 2020 17:32:41 -0700 (PDT)
X-Received: by 2002:a05:6000:1182:: with SMTP id g2mr1880999wrx.288.1586478761466;
 Thu, 09 Apr 2020 17:32:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <CAKwvOdkot0Q7FSCMKGm6ti4hhvD3N+AMUK4Xv2Xxiiu3+pURgQ@mail.gmail.com>
 <20200410001201.GA15303@ubuntu-s3-xlarge-x86>
In-Reply-To: <20200410001201.GA15303@ubuntu-s3-xlarge-x86>
From: Jian Cai <caij2003@gmail.com>
Date: Thu, 9 Apr 2020 17:32:30 -0700
Message-ID: <CAOHxzjEh30GyK2G2ztaGyZEEDt6xA0RqgNbmTKKZyXpwear5Mw@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Manoj Gupta <manojgupta@google.com>, Peter Smith <Peter.Smith@arm.com>, 
	Stefan Agner <stefan@agner.ch>, Sami Tolvanen <samitolvanen@google.com>, 
	Ilie Halip <ilie.halip@gmail.com>, Jian Cai <jiancai@google.com>, 
	Russell King <linux@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>, 
	Linus Walleij <linus.walleij@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Doug Anderson <armlinux@m.disordat.com>, 
	Benjamin Gaignard <benjamin.gaignard@linaro.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	"Steven Rostedt (VMware)" <rostedt@goodmis.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Tejun Heo <tj@kernel.org>, "Joel Fernandes (Google)" <joel@joelfernandes.org>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Dan Williams <dan.j.williams@intel.com>, "Eric W. Biederman" <ebiederm@xmission.com>, 
	David Howells <dhowells@redhat.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000000561b005a2e4df26"
X-Original-Sender: caij2003@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PBijwYu+;       spf=pass
 (google.com: domain of caij2003@gmail.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=caij2003@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--0000000000000561b005a2e4df26
Content-Type: text/plain; charset="UTF-8"

Thanks Nick and Nathan for the feedback, I will update and split my patch.
Sorry I'm still new to Linux kernel and I completely forgot to include
whoever helped.

On Thu, Apr 9, 2020 at 5:12 PM Nathan Chancellor <natechancellor@gmail.com>
wrote:

> On Thu, Apr 09, 2020 at 05:01:33PM -0700, 'Nick Desaulniers' via Clang
> Built Linux wrote:
> > On Thu, Apr 9, 2020 at 4:28 PM Jian Cai <caij2003@gmail.com> wrote:
> > >
> > > iwmmxt.S contains XScale instructions LLVM ARM backend does not
> support.
> > > Skip this file if LLVM integrated assemmbler or LLD is used to build
> ARM
> >
> > Hi Jian, thank you for the patch.  It's pretty much spot on for what I
> > was looking for.  Some notes below:
> >
> > s/assemmbler/assembler
> >
> > :set spell
> >
> > ;)
> >
> > Also, could use a link tag, ie.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/975
> >
> > (Always include the link tag to help us track when and where patches
> land).
> >
> > Finally, I think the hunks for the two different files should be
> > split; the init/Kconfig change should be it's own dedicated change
> > that goes to Masahiro, the maintainer of the Kbuild tree.  Then when
> > we have that, the dependent configs should go separately.  Would you
> > mind splitting this patch in two, and re-sending just the Kbuild patch
> > for now?  Since you used Sami's patch for inspiration
> > (
> https://github.com/ClangBuiltLinux/linux/issues/975#issuecomment-611694153
> ,
> >
> https://github.com/samitolvanen/linux/commit/fe9786cb52a0100273c75117dcea8b8e07006fde
> ),
> > it would be polite to Sami to add a tag like:
> >
> > Suggested-by: Sami Tolvanen <samitolvanen@google.com>
> >
> > or maybe better yet, take Sami's patch, add your signed off by tag
> > (maintaining him as the git author, see `git log --pretty=fuller`),
> > then rebase your AS_IS_CLANG hunk on top, make that a second patch,
> > then finally have the arm change as a third patch.
> >
> > This change is exactly what I'm looking for, so these are just process
> concerns.
>
> I think that they can be sent as a series that is picked up by Masahiro
> with an ack from an ARM maintainer.
>
> > > kernel.
> > >
> > > Signed-off-by: Jian Cai <caij2003@gmail.com>
> > > ---
> > >  arch/arm/Kconfig | 2 +-
> > >  init/Kconfig     | 6 ++++++
> > >  2 files changed, 7 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > > index 66a04f6f4775..39de8fc64a73 100644
> > > --- a/arch/arm/Kconfig
> > > +++ b/arch/arm/Kconfig
> > > @@ -804,7 +804,7 @@ source "arch/arm/mm/Kconfig"
> > >
> > >  config IWMMXT
> > >         bool "Enable iWMMXt support"
> > > -       depends on CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 ||
> CPU_PJ4B
> > > +       depends on !AS_IS_CLANG && !LD_IS_LLD && (CPU_XSCALE ||
> CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B)
> > >         default y if PXA27x || PXA3xx || ARCH_MMP || CPU_PJ4 ||
> CPU_PJ4B
> > >         help
> > >           Enable support for iWMMXt context switching at run time if
> > > diff --git a/init/Kconfig b/init/Kconfig
> > > index 1c12059e0f7e..b0ab3271e900 100644
> > > --- a/init/Kconfig
> > > +++ b/init/Kconfig
> > > @@ -19,6 +19,12 @@ config GCC_VERSION
> > >  config CC_IS_CLANG
> > >         def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
> > >
> > > +config AS_IS_CLANG
> > > +       def_bool $(success,$(AS) --version | head -n 1 | grep -q clang)
>
> $(AS) is being replaced with $(LLVM_IAS). That line should be:
>
>     def_bool $(success,test $(LLVM_IAS) -eq 1)
>
> I think. That depends on a commit in Masahiro's for-next branch [1] so
> it should be based/tested against that.
>
> Otherwise, I agree with Nick's comment about being split into two
> patches (one for the init/Kconfig change and one for the ARM change) and
> adding the Link tag.
>
> I ran about 75 randconfigs with LD=ld.lld and LLVM_IAS=1 and I did not
> see any Kconfig warnings from this and CONFIG_IWMMXT was unset in every
> one. Should prevent the errors that you encountered. Feel free to apply
> the following tags to any follow up revisions.
>
> Tested-by: Nathan Chancellor <natechancellor@gmail.com> # randconfig
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
> [1]:
> https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
>
> > > +config LD_IS_LLD
> > > +       def_bool $(success,$(LD) --version | head -n 1 | grep -q LLD)
> > > +
> > >  config CLANG_VERSION
> > >         int
> > >         default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
> > > --
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
>
> Cheers,
> Nathan
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAOHxzjEh30GyK2G2ztaGyZEEDt6xA0RqgNbmTKKZyXpwear5Mw%40mail.gmail.com.

--0000000000000561b005a2e4df26
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Nick and Nathan for the feedback, I will update and=
 split my patch. Sorry I&#39;m still new to Linux kernel and I completely f=
orgot to include whoever=C2=A0helped.<br></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 9, 2020 at 5:12 PM Nat=
han Chancellor &lt;<a href=3D"mailto:natechancellor@gmail.com">natechancell=
or@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">On Thu, Apr 09, 2020 at 05:01:33PM -0700, &#39;Nick Desaulniers=
&#39; via Clang Built Linux wrote:<br>
&gt; On Thu, Apr 9, 2020 at 4:28 PM Jian Cai &lt;<a href=3D"mailto:caij2003=
@gmail.com" target=3D"_blank">caij2003@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; iwmmxt.S contains XScale instructions LLVM ARM backend does not s=
upport.<br>
&gt; &gt; Skip this file if LLVM integrated assemmbler or LLD is used to bu=
ild ARM<br>
&gt; <br>
&gt; Hi Jian, thank you for the patch.=C2=A0 It&#39;s pretty much spot on f=
or what I<br>
&gt; was looking for.=C2=A0 Some notes below:<br>
&gt; <br>
&gt; s/assemmbler/assembler<br>
&gt; <br>
&gt; :set spell<br>
&gt; <br>
&gt; ;)<br>
&gt; <br>
&gt; Also, could use a link tag, ie.<br>
&gt; <br>
&gt; Link: <a href=3D"https://github.com/ClangBuiltLinux/linux/issues/975" =
rel=3D"noreferrer" target=3D"_blank">https://github.com/ClangBuiltLinux/lin=
ux/issues/975</a><br>
&gt; <br>
&gt; (Always include the link tag to help us track when and where patches l=
and).<br>
&gt; <br>
&gt; Finally, I think the hunks for the two different files should be<br>
&gt; split; the init/Kconfig change should be it&#39;s own dedicated change=
<br>
&gt; that goes to Masahiro, the maintainer of the Kbuild tree.=C2=A0 Then w=
hen<br>
&gt; we have that, the dependent configs should go separately.=C2=A0 Would =
you<br>
&gt; mind splitting this patch in two, and re-sending just the Kbuild patch=
<br>
&gt; for now?=C2=A0 Since you used Sami&#39;s patch for inspiration<br>
&gt; (<a href=3D"https://github.com/ClangBuiltLinux/linux/issues/975#issuec=
omment-611694153" rel=3D"noreferrer" target=3D"_blank">https://github.com/C=
langBuiltLinux/linux/issues/975#issuecomment-611694153</a>,<br>
&gt; <a href=3D"https://github.com/samitolvanen/linux/commit/fe9786cb52a010=
0273c75117dcea8b8e07006fde" rel=3D"noreferrer" target=3D"_blank">https://gi=
thub.com/samitolvanen/linux/commit/fe9786cb52a0100273c75117dcea8b8e07006fde=
</a>),<br>
&gt; it would be polite to Sami to add a tag like:<br>
&gt; <br>
&gt; Suggested-by: Sami Tolvanen &lt;<a href=3D"mailto:samitolvanen@google.=
com" target=3D"_blank">samitolvanen@google.com</a>&gt;<br>
&gt; <br>
&gt; or maybe better yet, take Sami&#39;s patch, add your signed off by tag=
<br>
&gt; (maintaining him as the git author, see `git log --pretty=3Dfuller`),<=
br>
&gt; then rebase your AS_IS_CLANG hunk on top, make that a second patch,<br=
>
&gt; then finally have the arm change as a third patch.<br>
&gt; <br>
&gt; This change is exactly what I&#39;m looking for, so these are just pro=
cess concerns.<br>
<br>
I think that they can be sent as a series that is picked up by Masahiro<br>
with an ack from an ARM maintainer.<br>
<br>
&gt; &gt; kernel.<br>
&gt; &gt;<br>
&gt; &gt; Signed-off-by: Jian Cai &lt;<a href=3D"mailto:caij2003@gmail.com"=
 target=3D"_blank">caij2003@gmail.com</a>&gt;<br>
&gt; &gt; ---<br>
&gt; &gt;=C2=A0 arch/arm/Kconfig | 2 +-<br>
&gt; &gt;=C2=A0 init/Kconfig=C2=A0 =C2=A0 =C2=A0| 6 ++++++<br>
&gt; &gt;=C2=A0 2 files changed, 7 insertions(+), 1 deletion(-)<br>
&gt; &gt;<br>
&gt; &gt; diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig<br>
&gt; &gt; index 66a04f6f4775..39de8fc64a73 100644<br>
&gt; &gt; --- a/arch/arm/Kconfig<br>
&gt; &gt; +++ b/arch/arm/Kconfig<br>
&gt; &gt; @@ -804,7 +804,7 @@ source &quot;arch/arm/mm/Kconfig&quot;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 config IWMMXT<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bool &quot;Enable iWMMXt support=
&quot;<br>
&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0depends on CPU_XSCALE || CPU_XSC3 || =
CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0depends on !AS_IS_CLANG &amp;&amp; !L=
D_IS_LLD &amp;&amp; (CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU=
_PJ4B)<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0default y if PXA27x || PXA3xx ||=
 ARCH_MMP || CPU_PJ4 || CPU_PJ4B<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0help<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Enable support for iWMMXt=
 context switching at run time if<br>
&gt; &gt; diff --git a/init/Kconfig b/init/Kconfig<br>
&gt; &gt; index 1c12059e0f7e..b0ab3271e900 100644<br>
&gt; &gt; --- a/init/Kconfig<br>
&gt; &gt; +++ b/init/Kconfig<br>
&gt; &gt; @@ -19,6 +19,12 @@ config GCC_VERSION<br>
&gt; &gt;=C2=A0 config CC_IS_CLANG<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0def_bool $(success,$(CC) --versi=
on | head -n 1 | grep -q clang)<br>
&gt; &gt;<br>
&gt; &gt; +config AS_IS_CLANG<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0def_bool $(success,$(AS) --version | =
head -n 1 | grep -q clang)<br>
<br>
$(AS) is being replaced with $(LLVM_IAS). That line should be:<br>
<br>
=C2=A0 =C2=A0 def_bool $(success,test $(LLVM_IAS) -eq 1)<br>
<br>
I think. That depends on a commit in Masahiro&#39;s for-next branch [1] so<=
br>
it should be based/tested against that.<br>
<br>
Otherwise, I agree with Nick&#39;s comment about being split into two<br>
patches (one for the init/Kconfig change and one for the ARM change) and<br=
>
adding the Link tag.<br>
<br>
I ran about 75 randconfigs with LD=3Dld.lld and LLVM_IAS=3D1 and I did not<=
br>
see any Kconfig warnings from this and CONFIG_IWMMXT was unset in every<br>
one. Should prevent the errors that you encountered. Feel free to apply<br>
the following tags to any follow up revisions.<br>
<br>
Tested-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@gmail.com=
" target=3D"_blank">natechancellor@gmail.com</a>&gt; # randconfig<br>
Reviewed-by: Nathan Chancellor &lt;<a href=3D"mailto:natechancellor@gmail.c=
om" target=3D"_blank">natechancellor@gmail.com</a>&gt;<br>
<br>
[1]: <a href=3D"https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/l=
inux-kbuild.git" rel=3D"noreferrer" target=3D"_blank">https://git.kernel.or=
g/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git</a><br>
<br>
&gt; &gt; +config LD_IS_LLD<br>
&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0def_bool $(success,$(LD) --version | =
head -n 1 | grep -q LLD)<br>
&gt; &gt; +<br>
&gt; &gt;=C2=A0 config CLANG_VERSION<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0default $(shell,$(srctree)/scrip=
ts/clang-version.sh $(CC))<br>
&gt; &gt; --<br>
&gt; <br>
&gt; -- <br>
&gt; Thanks,<br>
&gt; ~Nick Desaulniers<br>
&gt; <br>
<br>
Cheers,<br>
Nathan<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAOHxzjEh30GyK2G2ztaGyZEEDt6xA0RqgNbmTKKZyXpwe=
ar5Mw%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAOHxzjEh30GyK2G2ztaGyZEEDt6xA0RqgN=
bmTKKZyXpwear5Mw%40mail.gmail.com</a>.<br />

--0000000000000561b005a2e4df26--
