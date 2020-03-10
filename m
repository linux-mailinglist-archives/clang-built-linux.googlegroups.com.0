Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHGZTPZQKGQEIDZ46BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B338A17EDFA
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 02:25:49 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id u199sf18625340ywu.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 18:25:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583803548; cv=pass;
        d=google.com; s=arc-20160816;
        b=lC5EuRU2IvvogeZQJ1b9QSVAhsZ+FbyCv+bau45cowt+o+mKvMKgIfUdXxsz4wChhQ
         9qf9a2FJim47DrsWVhKnaAtSIO6KDmZpmkbASNavPtcpX1gaMc//+cAJu4SW+crZs+VL
         CeWErfpkXYHtnWBsaLCaD+NOIU6dyD2gIxqvZBLw7llTE4vX1uHznY265jsn3w2BWZmF
         tLb8vduN6XkPqYJV6wzMe+IcgYilBV3PYLrb6y7suOV5U8BOvbhxNQoGuKpYuPaC9t5Z
         yCqu2rTq+ncHGm6Du7duXC5opv8q44OljBPPEL/IfXEBGzqM3doxoYZhqSJ0S23tBgu6
         fkWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Ovi2e5S2aCXHV8eO5Q6MzWvpNKJiY2GmjKngIZX3cQQ=;
        b=n1VbRujGO0T1BKiQeJZNoiNlgVNchJrdyTkFFTjXwoX8JdkI2iScDff0+YdAnJoKj7
         rAqMPMQLyzZSCUuLGaog63aajiTIuFLlGJGzKFWjbMHSVZOwWcsxv+S7wIQI5+jkm7Ca
         uhjLMimKd6HmSw4WKxy0taCU5LBjZPzRekhoqLvTUgwdTjGLS/kkdVkUTzfZsjvxri19
         pYWrjGQgoHZqaUiGldiyIEoDe86vzdX/mzaFKLU8Zyp+/So0mtdGlOf/Fxq+jURRS55r
         d2MUroRQRJFJAQ44/ydvIQb/A3qpflhhYJyCsgUPOFHY65fMyNwky3gGj8OM4tdHXi/J
         dClw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jvlcjXMj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ovi2e5S2aCXHV8eO5Q6MzWvpNKJiY2GmjKngIZX3cQQ=;
        b=M+KI+zegUJcFmtJOlO+Fu8UVnixHvKglinzYFN9VTiJghFqNjtsURyKlZQCoJNecbh
         dsSzbCCbw1rkcKz5dXpV5liEMhorjr4Tr6zUyFNbwZjgtlY+yjbv5hxseEmyHeGNOK/Z
         3rV9uzx/M41Sr6aUkqP5f+o9HzouefNj3BrJXhEhInKWD7Gik+WNFe5jdBY3ylb0/jGJ
         mScHuKPx5OB9iXEzRJ3HgJMxO1G6T0phtbUB/FoHyiPYGFbAugY9TkHJNccxoc3jDDDd
         mxnsuXfXtm10RUZKXzUF6WTADev4cA4QHJ0NAq95OMZvPGiN/jIYjGzHASFt/K60rJRk
         6WBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ovi2e5S2aCXHV8eO5Q6MzWvpNKJiY2GmjKngIZX3cQQ=;
        b=MHnqltCXMtoeM/P1QC8J4tBaYrmecY9KM++6OoVBJwrKefHV24Kwq1PQhu85Z+4zMJ
         qp7PFbGMiX1IBAC65iINQ15LD8DKroYXhMGM0hzkkoJCaC1H26uA0QWLkgq1tyR520JT
         /Bhmt9oO04WpUvEEqEYKxoRcW0Ss7H9uDeC4OKTknGu8mPNzWqi0ulkCCRpNmjCXqGO6
         rUYQV9vO1bs7aA6gSRQH+qtXPJ4EqdeWZL6EH+toSu/SS0B7A3le/aVDLr/ZnT01u5Rd
         PCWlTK3HsntahjFuFDYzRerRWSJBmf9C96WsMGx449SQkjzf3uEkHs6KXrFg+RKayCkV
         4E7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ovi2e5S2aCXHV8eO5Q6MzWvpNKJiY2GmjKngIZX3cQQ=;
        b=ILpibXtenDSvY2gz0omT5qYlNXcqUk0yvP69teWg/4kTssIetx4K0Un7vH2FFRghD9
         WO/sGOLKnTwXGCHxcnSBsOCn96QDt+010Z3Xrw/AU12PFSXPboRzwTZxGmfONHd+m1Uv
         kvV92P/zmwZnvRCviyB7AtEaRw17PYGaLmT2NR4WcBGsYuRaYNPEKyTjMYX9A08Ab2wD
         JvzQwEIY0mTUqFz4sEBSzkIZiwkzd80udP5i03HyGzpgyVN3G7po+I41I+O23jXplmUg
         V+YpN4asMhm5SoZlabJkMNjq3/bszLit0DONFZcODJR5C9qq/EfepwCE1zd5cGYyiT8y
         5F3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2kejgrWbBcdM0Jw7kFb2pYPkONQv9cv5IyUsYEXA5VrkKsYygA
	fQfjzAO9vUb6sXNqlPXBhq8=
X-Google-Smtp-Source: ADFU+vsrAJi+KA3kxnSjlim9VXH1V83NfamFRcEngQnNlNhxfgXgS7w7In/AlI6StdCFhUQHl9WbWA==
X-Received: by 2002:a25:dc91:: with SMTP id y139mr21174422ybe.252.1583803548779;
        Mon, 09 Mar 2020 18:25:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:df89:: with SMTP id w131ls3237918ybg.2.gmail; Mon, 09
 Mar 2020 18:25:48 -0700 (PDT)
X-Received: by 2002:a25:9c46:: with SMTP id x6mr21376337ybo.69.1583803548335;
        Mon, 09 Mar 2020 18:25:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583803548; cv=none;
        d=google.com; s=arc-20160816;
        b=yYjYXevH35PIFwRKzvPwOHuWwXtET4uwMq4rY1+OxKSvNX4kuKYmPy0j+NQZdpBQaS
         Vdbdi1bTW0GqUNbe9En8AaGNdMGZrirXXPgtT3kGC7Nay+o0cWDov3FRLJOyjKDdhTs0
         3iWfufk0wnZ1WrKpEDtLmEMqG8GH9HwuYXMJQEZ/Igx2zTtjz900HKA8+WCcftrTRoR3
         mQjjsqxJJd4GgCk5Fgt1xTUXTU/1FtK6FzPQFWK3SLgu7r0N4uIap5CTGJtRs3mSIPyV
         zMooRGxy/NIXxvbpPkUexCxXlysveT4eyOmwXUyh/+yngRwVsmHeyxBvu69mhSCHTzki
         E6qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cmN98IWbXYyX8O2K4XgYM3Py4nvl6j5+94LDp5dV7Vg=;
        b=hHzyiy/JWoX34Uvlt1QhpFLzhIH/Rw3/yo3OJuLmIm7iLm6lb9zOmyzo5J3jsxvwFl
         55nAsrcazTWHGEBT/MBpkf1jyQQrfEo8nrXoWad/kIcxDf2HriiFH+4HH/VMc4rOna3Y
         dwSLTFn4XPXNZ0swySV0iy0QtZ0NXa8Tpvz7vPcSM1Cr7cwi3JFTgVvGXZV0/l8GGZrU
         QUa/WkpW1SZiNjSrDPOLtfyWLfB7bJNde4xwFYdjIJHYpzg52Q9VPoqs429CBnLxioUZ
         G9pAsY+YaH8/UoJ+/SfgMCVMUXc0C7aMyoFKBYyH1nKaOg0sPpjgEAubZCKCpKTOH4tX
         JefA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jvlcjXMj;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id l1si102990ybt.2.2020.03.09.18.25.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 18:25:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id 66so11594373otd.9
        for <clang-built-linux@googlegroups.com>; Mon, 09 Mar 2020 18:25:48 -0700 (PDT)
X-Received: by 2002:a9d:3de4:: with SMTP id l91mr15681122otc.35.1583803547733;
        Mon, 09 Mar 2020 18:25:47 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id e15sm3769314oie.3.2020.03.09.18.25.47
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 18:25:47 -0700 (PDT)
Date: Mon, 9 Mar 2020 18:25:45 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	stable <stable@vger.kernel.org>
Subject: Re: [PATCH] kbuild: Disable -Wpointer-to-enum-cast
Message-ID: <20200310012545.GA16822@ubuntu-m2-xlarge-x86>
References: <20200308073400.23398-1-natechancellor@gmail.com>
 <CAK7LNARcTHpd8fzrAhFVB_AR7NoBgenX64de0eS2uN8g0by9PQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNARcTHpd8fzrAhFVB_AR7NoBgenX64de0eS2uN8g0by9PQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jvlcjXMj;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Mar 09, 2020 at 11:11:05AM +0900, Masahiro Yamada wrote:
> Hi Nathan,
> 
> On Sun, Mar 8, 2020 at 4:34 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Clang's -Wpointer-to-int-cast deviates from GCC in that it warns when
> > casting to enums. The kernel does this in certain places, such as device
> > tree matches to set the version of the device being used, which allows
> > the kernel to avoid using a gigantic union.
> >
> > https://elixir.bootlin.com/linux/v5.5.8/source/drivers/ata/ahci_brcm.c#L428
> > https://elixir.bootlin.com/linux/v5.5.8/source/drivers/ata/ahci_brcm.c#L402
> > https://elixir.bootlin.com/linux/v5.5.8/source/include/linux/mod_devicetable.h#L264
> >
> > To avoid a ton of false positive warnings, disable this particular part
> > of the warning, which has been split off into a separate diagnostic so
> > that the entire warning does not need to be turned off for clang.
> >
> > Cc: stable@vger.kernel.org
> > Link: https://github.com/ClangBuiltLinux/linux/issues/887
> > Link: https://github.com/llvm/llvm-project/commit/2a41b31fcdfcb67ab7038fc2ffb606fd50b83a84
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  Makefile | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/Makefile b/Makefile
> > index 86035d866f2c..90e56d5657c9 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -748,6 +748,10 @@ KBUILD_CFLAGS += -Wno-tautological-compare
> >  # source of a reference will be _MergedGlobals and not on of the whitelisted names.
> >  # See modpost pattern 2
> >  KBUILD_CFLAGS += -mno-global-merge
> > +# clang's -Wpointer-to-int-cast warns when casting to enums, which does not match GCC.
> > +# Disable that part of the warning because it is very noisy across the kernel and does
> > +# not point out any real bugs.
> > +KBUILD_CFLAGS += $(call cc-disable-warning, pointer-to-enum-cast)
> >  else
> 
> 
> 
> I'd rather want to fix all the call-sites (97 drivers?)
> instead of having -Wno-pointer-to-enum-cast forever.

Yes, there are 97 unique warnings across my builds, which are mainly
arm, arm64, and x86_64 defconfig/allmodconfig/allyesconfig:

https://github.com/ClangBuiltLinux/linux/issues/887#issuecomment-587938406

> If it is tedious to fix them all for now, can we add it
> into scripts/Makefile.extrawarn so that this is disabled
> by default, but shows up with W=1 builds?

Sure, I can send v2 to do that but I think that sending 97 patches just
casting the small values (usually less than twenty) to unsigned long
then to the enum is rather frivolous. I audited at least ten to fifteen
of these call sites when creating the clang patch and they are all
basically false positives.

I believe Nick discussed this with some other developers off list, maybe
he has some other feedback to give. I'll wait to send a v2 until
tomorrow in case anyone else has further comments.

> (When we fix most of them, we will be able to
> make it a real warning.)
> 
> 
> What do you think?
> 
> Thanks.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310012545.GA16822%40ubuntu-m2-xlarge-x86.
