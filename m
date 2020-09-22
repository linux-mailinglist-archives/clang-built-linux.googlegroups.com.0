Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDM2VH5QKGQECD6JPII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id C45E02748E4
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 21:14:22 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id 7sf16902613qtp.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Sep 2020 12:14:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600802062; cv=pass;
        d=google.com; s=arc-20160816;
        b=csU+sZq3kBmcxJxSYG4az2+i/RV0MROoGU7RhpInq18WOtcmI0l/B7Y3/zc0h8xDok
         4tnnOU5qO69ZHtchT1j4Sa4YcxfNlW06havZ5aemwadHyOU08KnUkAOGmrnDyNc5EBe+
         ZQynzDrQHiKpP9KTcUwQwOpwWlbCNCJj3cOfqCR8xtisBG+8tO9Yku23mSiaWPhkjTW8
         SSknzAEExTNmTYnO1MiPpufEgpjOis1kSVuKQQsaZVe0qYctW0ygKIeoDvSDE6LLxyCR
         URrNsDGWbdWbIuIORq8dl2isrStw71GtyVn3kfYz2AEnChDheT43OJnwafAqtG2TOn2X
         i/gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/ruqvKRpuaBHES1LxSi/71DsDyXdrXHzgdJB/3kuu7k=;
        b=NJ3t8mpwb9uW//tQZn0CMfX8NLMEJ7sbP1inxVoxUyYAuZ5u0eTG9917HAFDIl/nY+
         ftMHOhvTyp+bHLNZQaDwIENOdSqkOgi2wC/hnQITbtF+e2pGbUIj4az+0BqbO5TMdX9t
         MSNbCLuSyRXYqpJQbBKZYJsPxhV/cEgpD8GeYZlAIM3TQlUdHurjMLZQA/lgMS1wBP5h
         8f5nfUeoedq6KTfD0Z9Tc+ns542njvoXBjVRq932gdc5ohcDibxaLxA7QdoDgJDafBzV
         p6nkhaf6GYHgfb2eoNhFPaRZnL4mpd9rSXL/JrsziAf1EtwYbRx2H9I/DjnKiY1SmSx8
         CptQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c2pAKhYM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/ruqvKRpuaBHES1LxSi/71DsDyXdrXHzgdJB/3kuu7k=;
        b=caZ1MvCmjKn9V53bl0rypNjcThqpCoRKm9axDca71SCA4V7ds5kIxydYbxIo3DfeF2
         OlSbYVb51bT92Eed5H6dxEPr45+WkkrX4S77QiM3OhTt4qTDwNCD0t6t+CWBRll8LTc0
         /HfbK2fPIwJ3oMlBGKfJaBux7Uzhhydho8zpDm68Bx1+PAmJ23Rlr6doSvpkiFRj9yBr
         KMJMjGJVNIj5JeEz5F9WJ31c49gpcoCTxhIBo6tcH4PSksXMXKop8YGCO8ldDdDCp3oG
         +VrYRp2oBmFEgn76ReW3UMpCLRhkbf7Z+zL7DZZF8eqC+IAriTMO3pDkWEm1FJLOzBaE
         y9xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/ruqvKRpuaBHES1LxSi/71DsDyXdrXHzgdJB/3kuu7k=;
        b=RJAaXjmnM5HTISkkH5eF/wIDttxW2IUuR1EpASuxi90uB1TNCuhEtAhGf8grwPVpET
         nYmKFQWcatI8jMeB527FljhrA/C2ROdWxKq0UOQUj44iI4qjXmxAJjdu5COjHWWEXqd/
         etCmteLiiGCdFXdUg4xgjbvEaz/yLnafrdK4zEYtBP+Qdj+nWOByGbVFVhUCFzs5CbKz
         0VMcNXK0Emc4Z7MC+cm1Bref/UAz3uPINlZdaFwjDzbTjATefpYB8zrBgyZsn6q+OjUm
         3bYP2mOhNpG0ZC5VQ7rQM6jyCn/WH4sBBDYH6TeiBwZkTP63MG+ndEW+40g4OgTPydIu
         5+SA==
X-Gm-Message-State: AOAM5339juea4nKca7sOZQQPH5wr4hTQr9SKrXtZXYXGHrDo9UHvxmCI
	nMxKL6rDc0guZc4os923e/k=
X-Google-Smtp-Source: ABdhPJz0bH3oUIZ0vikuB9LcgFz0FcI4t+rHlJrG05gu6D4O8968kkbsWFS43tlA+G9wT1uB0IBYfw==
X-Received: by 2002:ad4:5146:: with SMTP id g6mr7397741qvq.22.1600802061823;
        Tue, 22 Sep 2020 12:14:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:d802:: with SMTP id u2ls3525633qkf.5.gmail; Tue, 22 Sep
 2020 12:14:21 -0700 (PDT)
X-Received: by 2002:a37:6543:: with SMTP id z64mr6042431qkb.278.1600802061133;
        Tue, 22 Sep 2020 12:14:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600802061; cv=none;
        d=google.com; s=arc-20160816;
        b=IVQ3QRav5n7LL9hfpFPYmmQiR/hfwOHrUixNC+0qLT2Blrrpm2GJxGTLJqNYTcnyOX
         M1HWM4ObefBi7CorwplOnwDPB71gesgNgr+e93uCVu+cb+cR1691CvRf5TmjUnfi5b8G
         fc06bcGrZmuw8P8Ty72gi75I1L7sZvt3vhWy/1+kZkThIZtKjipDgfYhrU1ui9AZ0POf
         89kOfEHixHDNCLDOXZSkJha3WtGuiHxAhACCwvDBaUiR1KaYXVHPZKHcdhNdNjc1Jc5E
         mCc0CFdNPe/hW9pIYWXM1uCuWZ9Qcx7ZosX1kY5HyeS8PytVtent2Qt17Ipm/Dhup6+u
         IX4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ny/WX3SoGi3xA0aasg0y+S/O8JpZEz3cKfWCtfobAKg=;
        b=KD23VaCxJM8RM5ZYUScV8uD8i/kQN+xCxBaNop3J0UEWTvjErLWwj+GTkgBSbxq5kp
         fyofjamqMUFZ8GxCkY3m4Q3XxnFJ+CTwKDpW5tgjICubrpyNXo0Z32fDpOAf7oGdO8C9
         Z0RnqztBa3xeM8xX24+RLoP5PxsPkoJfscdRuaFeXZTw8S3HGzryTRjCnyLzmk1QC3BQ
         yJYxNB56ijnnFWtya3TvRenZLCmF8xz1bfYd+3UzDS/XkzsIMNA4K/VXs7bw30G+QpuU
         Wjt+KKwqCf/+M22/BGi/E1rOoBDvzl3U4ZW0HmVfKOM+IizpSycMLaulv9K34Lr3Q/PO
         AWbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c2pAKhYM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id v189si679743qka.7.2020.09.22.12.14.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Sep 2020 12:14:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id o20so13336697pfp.11
        for <clang-built-linux@googlegroups.com>; Tue, 22 Sep 2020 12:14:21 -0700 (PDT)
X-Received: by 2002:a65:554a:: with SMTP id t10mr4839340pgr.263.1600802060042;
 Tue, 22 Sep 2020 12:14:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200920163351.11293-5-James.Bottomley@HansenPartnership.com>
 <202009210844.KCwzdqmx%lkp@intel.com> <2d395d924b70fba7f1867eb83946497ce1f6eb47.camel@HansenPartnership.com>
In-Reply-To: <2d395d924b70fba7f1867eb83946497ce1f6eb47.camel@HansenPartnership.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 22 Sep 2020 12:14:08 -0700
Message-ID: <CAKwvOd=yqYh9i1n84djbX_+8-4JbAUbRQL6FYnhugOocu+vCKg@mail.gmail.com>
Subject: Re: [PATCH v12 4/5] security: keys: trusted: use ASN.1 TPM2 key
 format for the blobs
To: James Bottomley <James.Bottomley@hansenpartnership.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Philip Li <philip.li@intel.com>
Cc: kernel test robot <lkp@intel.com>, linux-integrity@vger.kernel.org, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Mimi Zohar <zohar@linux.ibm.com>, 
	Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>, David Woodhouse <dwmw2@infradead.org>, 
	keyrings@vger.kernel.org, David Howells <dhowells@redhat.com>, 
	Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=c2pAKhYM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Mon, Sep 21, 2020 at 2:31 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> On Mon, 2020-09-21 at 08:07 +0800, kernel test robot wrote:
> > Hi James,
> >
> > I love your patch! Yet something to improve:
> >
> > [auto build test ERROR on integrity/next-integrity]
> > [also build test ERROR on linus/master v5.9-rc5 next-20200918]
> > [cannot apply to security/next-testing dhowells-fs/fscache-next]
> > [If your patch is applied to the wrong git tree, kindly drop us a
> > note. And when submitting patch, we suggest to use '--base' as
> > documented in https://git-scm.com/docs/git-format-patch]
> >
> > url:
> > https://github.com/0day-ci/linux/commits/James-Bottomley/TPM-2-0-trusted-key-rework/20200921-003922
> > base:
> > https://git.kernel.org/pub/scm/linux/kernel/git/zohar/linux-integrity.git
> > next-integrity
> > config: x86_64-randconfig-a003-20200921 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project
> > f4e554180962aa6bc93678898b6933ea712bde50)
> > reproduce (this is a W=1 build):
> >         wget
> > https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross
> > -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross
> > ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > > > make[4]: *** No rule to make target 'security/keys/trusted-
> > > > keys/tpm2key.asn1.o', needed by 'security/keys/trusted-
> > > > keys/built-in.a'.
> >    make[4]: *** [scripts/Makefile.build:283: security/keys/trusted-
> > keys/trusted_tpm2.o] Error 1
> >    make[4]: Target '__build' not remade because of errors.
>
>
> So can I still add that tracking this down involved installing an
> entirely unnecessary ARM build environment, which was a huge effort I
> didn't need to do if you'd just provided the build log which fingered
> the ASN.1 compiler problem if you know what to look for.

Having a link to the build log artifact is a valid criticism.

>
> The reason for the problem is because ASN1 isn't selected in the
> Kconfig which causes the ASN.1 compiler not to be built.  The way our
> current build rules are structured causes the make rule for this simply
> to be skipped, which means you have to know to look for the absence of
> ASN.1 in the build log.  I propose adding this to the build rules,
> which produces the much more explicit:
>
> /home/jejb/git/linux-build/scripts/Makefile.build:387: *** CONFIG_ASN1 must be defined for the asn1_compiler.  Stop.
> make[3]: *** [/home/jejb/git/linux-build/scripts/Makefile.build:505: security/keys/trusted-keys] Error 2
>
> James
>
> ---
>
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index a467b9323442..bca7003beac8 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -382,6 +382,11 @@ quiet_cmd_asn1_compiler = ASN.1   $(basename $@).[ch]
>        cmd_asn1_compiler = $(objtree)/scripts/asn1_compiler $< \
>                                 $(basename $@).c $(basename $@).h
>
> +ifndef CONFIG_ASN1
> +$(objtree)/scripts/asn1_compiler:
> +       $(error CONFIG_ASN1 must be defined for the asn1_compiler)
> +endif
> +
>  $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1 $(objtree)/scripts/asn1_compiler
>         $(call cmd,asn1_compiler)

Is there a better way via Kconfig to gate whatever consumes
CONFIG_ASN1 on CONFIG_ASN1 being set, rather than erroring for
randconfig builds? I don't see how the diff would solve the case of CI
systems doing randconfig builds.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DyqYh9i1n84djbX_%2B8-4JbAUbRQL6FYnhugOocu%2BvCKg%40mail.gmail.com.
