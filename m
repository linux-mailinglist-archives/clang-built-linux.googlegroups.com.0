Return-Path: <clang-built-linux+bncBDYJPJO25UGBBV5H77VQKGQEVH7WSLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 289B3B4044
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 20:26:33 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id r141sf982012qke.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 11:26:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568658392; cv=pass;
        d=google.com; s=arc-20160816;
        b=stXky1s8f6vEcHLmB0Kq7M4+EeP+ODuz+LrvJSLBYAiIYTEapu60WvzRonGFj30XZ1
         HgCnvc4EHihjQsE2VIMcxxheEHKaGCKQTrrDHDD8dRTkRKcDyCBG993l9gxG3TGACnDc
         +lkvLWlIU808o6Fuet4vVfZhxvWZU3VW+vzKk5hcGChjCv4V9Azk+4+ZmF0XYBspY4+p
         dKoYkmsI+qMD3vya0EA857FEB3Nb/dtFtUHYpg3jxKjS45DqH39Qek67yPDacpTnFxQc
         5nxD/WioS+Q4ZxNtrewPESI2O0v+wuzYvqW1qYcyRTP4e3al6uB9LDel7A6eXR9xQorb
         vr9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=o1oeM36MyY/Otz21OFAwKR0oypHfp0GSpWQzI+52T4I=;
        b=TnNZBqDGC2i3eJom2Dz8VRcAN0t2e4YzQ/zXlAnoF4CG0z/H3vZ50M+F6BQQ/W2BML
         DZQ04KY4yFk15+oIJFoaqPVTd6OWJKyU+wCS9Wn5GbLPE8fyufJp1k+4seaHDtRnUFYv
         qRnxiGsZjveAaQlWK7PYt+zAnk99Z/NMCAxocsXvq8iU15WO/mnVDy7N9jCNpUUCsCIK
         +a+n2+4JlkKYXRnXerCO9hHBUhp4kSTE0Sd0TGEmgu9NPfIthlhezrIU4IWyHvoCedZ8
         jS6cHvWF+depjToZDkSn7e+21R59K/BVcH5zbkAQFx7fc4bax8LGi7wM196tfXjEgAUI
         H7Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nfr7JdgB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=o1oeM36MyY/Otz21OFAwKR0oypHfp0GSpWQzI+52T4I=;
        b=MYLRtuFSWTyfhGd6Rc/J/+QMzFcRlfPNPS7/zvimgrS1NgRaDt9w2jY30mfpyHJNpW
         HA9qoCJHKIGYgnEEk2/r6ARWsuuIVInKceTuzOSI5SAKQFth7YndxPUkUwCOvrMue+9A
         pptXTFmr2TpXBO8A4HaDBCJujt+SCgsuYuEp9VaX8RGSVwCjLeaNq/RycLZJmycScrx9
         yVlcrKdelBmq0GtpkgZ9EfPEkjjeaV39U4NF9PpTW/8R/QvfsrFga/CzE4AN37NXSb/0
         LXtCA1f9Aa6hYgLVCKsVNE4EEdvhCh5z+QVDwEwOwcTPdJOBIwAsozdbKvjnySc+Wa+7
         exLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o1oeM36MyY/Otz21OFAwKR0oypHfp0GSpWQzI+52T4I=;
        b=TpZ/UGhepmu+E4EgVmW1PBNdA+NHj2LaZ83zZuxs0lLlw1OiYv75BJubs66OEDulaB
         bBrKmLhTDEzm0hp2m62VQGh5YeBM6/p1CBKoD2mFLE/3m1ymp9CEEUysyCuClxvS54Dy
         COP07wla6FWK+dcXPab9CK2FTH16tgACFuLkeQmHc3+dhlHTc2Ylkl2ECYfPbQcZqcxH
         1qW/NWm2Bbz28XbpTynDysPwm/c77OL/ZAJ2fYvWCkyItXz8ACpMmt4fuLiyBpKUZM9M
         jTVCiI5xFbkgdImE0bTAm9SRdgUbxv2SMydX+ObetvNvBCp0kcYjE+8lzQw4GPu890iG
         wmnw==
X-Gm-Message-State: APjAAAUqJBPe3zqGn5EGH/PyrhsKeSR0qUD0WiomLPLPm05YFrHdLvuW
	K4AzXvhrLw5LqmCMGcYzdOc=
X-Google-Smtp-Source: APXvYqyGqzh7oCZY7aSRnG9Vt3qRWSmPT4FjFEjVVy7SuObtkJccedugOMDj4yPxKk13t2OVb3SavA==
X-Received: by 2002:a05:6214:2b0:: with SMTP id m16mr1388662qvv.45.1568658391997;
        Mon, 16 Sep 2019 11:26:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3136:: with SMTP id g51ls135234qtb.4.gmail; Mon, 16 Sep
 2019 11:26:31 -0700 (PDT)
X-Received: by 2002:ac8:6e8b:: with SMTP id c11mr1014192qtv.77.1568658391756;
        Mon, 16 Sep 2019 11:26:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568658391; cv=none;
        d=google.com; s=arc-20160816;
        b=EW8MzCShQ6UnSKIJmIbfB2GkAT8fcg+RzMfWPnDwKq/ck24pMtaOSgeYR0/rXu9Oyy
         yOte5QNgNS1oV4rXA6aCGOCf2p1KkFDS900TGSUSMoZS7xev13DyPm3lRaLlnRsv8ihN
         94FXNbP8ixKIxR/EVCdiWYmo0SUKKyp1oX7gSa/TxPG5v89yIZkbMcdWLHXm3A+PZjzy
         eX1MGMYveSb1OXGXxNvXbAocb9p75PNLquknTNQEV0vBdm9GYMcmpT44+3rf7NSAUO1S
         NrmDdvMQjXYoUEbW/f0DLdrjJ3FOVUYJSxYjaPPtzaun++l3mY2T0nwDGJStMWw+fTEw
         IZlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=2q6HyG0p1NE+qBQVD2QnJ49oJ6ZF8+Pd6oMJpmuDD2s=;
        b=PJVfpOkGcZ2+689YpGFtsjvZ4aWt5zpNnDI8n9KgjipDfwRUDCbqGgK/odxdKTKOBn
         0LWwRncoHGmbV9M8HHYWzFHXflGHU/yDnBfgVvfYRRLTxuhsls0XRQ5HC53J8F0WPPWU
         DTASW2nfGXNGUbSVd59HkkIaki60lDFMN94s/NBCzHu/Rax3luLmUPUx16IZakbA32vA
         fb28wSis+2CAyJ3xivUl/G37fm2oAjtw1+GhBh9yrAQXTqCvzF6bR8C/fKTYyQgL+iMe
         AEdjbyW1kMjJueX3MarP7PJoyYAvoyyIYfNZmBeTxCxb/sCstUK+ReaER0S7T3QTkbUZ
         Rr9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nfr7JdgB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id t186si49116qkf.3.2019.09.16.11.26.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 11:26:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id q5so397940pfg.13
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 11:26:31 -0700 (PDT)
X-Received: by 2002:a63:7153:: with SMTP id b19mr480520pgn.10.1568658390631;
 Mon, 16 Sep 2019 11:26:30 -0700 (PDT)
MIME-Version: 1.0
References: <201909161845.7u7EM0JN%lkp@intel.com>
In-Reply-To: <201909161845.7u7EM0JN%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Sep 2019 11:26:18 -0700
Message-ID: <CAKwvOdktGCk0MDRvph_+0-i1qGyjfLe+NnC04iceO2Z=jJ5EBg@mail.gmail.com>
Subject: Re: [PATCH] tpm: Wrap the buffer from the caller to tpm_buf in tpm_send()
To: kbuild test robot <lkp@intel.com>, Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
Cc: kbuild@01.org, clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@01.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nfr7JdgB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

Hi Jarkko,
Below is a report from 0day bot building w/ Clang. Can you please take
a look? (sorry if this has been previously reported)

On Mon, Sep 16, 2019 at 4:19 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@01.org
> In-Reply-To: <20190916085008.22239-1-jarkko.sakkinen@linux.intel.com>
> References: <20190916085008.22239-1-jarkko.sakkinen@linux.intel.com>
> TO: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
> CC: linux-integrity@vger.kernel.org, Jarkko Sakkinen <jarkko.sakkinen@lin=
ux.intel.com>, Mimi Zohar <zohar@linux.ibm.com>, stable@vger.kernel.org, Pe=
ter Huewe <peterhuewe@gmx.de>, Jason Gunthorpe <jgg@ziepe.ca>, Arnd Bergman=
n <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, open li=
st <linux-kernel@vger.kernel.org>
> CC: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>, Mimi Zohar <zohar@=
linux.ibm.com>, stable@vger.kernel.org, Peter Huewe <peterhuewe@gmx.de>, Ja=
son Gunthorpe <jgg@ziepe.ca>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Har=
tman <gregkh@linuxfoundation.org>, open list <linux-kernel@vger.kernel.org>
>
> Hi Jarkko,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on jss-tpmdd/next]
> [cannot apply to v5.3 next-20190915]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help improve the system]
>
> url:    https://github.com/0day-ci/linux/commits/Jarkko-Sakkinen/tpm-Wrap=
-the-buffer-from-the-caller-to-tpm_buf-in-tpm_send/20190916-165225
> base:   git://git.infradead.org/users/jjs/linux-tpmdd next
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb0=
6f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         make.cross ARCH=3Darm64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/char/tpm/tpm-interface.c:364:1: warning: unused label 'out' [-=
Wunused-label]
>    out:
>    ^~~~
>    1 warning generated.
>
> vim +/out +364 drivers/char/tpm/tpm-interface.c
>
> 659aaf2bb5496a drivers/char/tpm/tpm.c           Rajiv Andrade   2009-02-0=
2  343
> 68d6e6713fcb2e drivers/char/tpm/tpm.c           Stefan Berger   2011-11-1=
1  344  /**
> aad887f6641145 drivers/char/tpm/tpm-interface.c Jarkko Sakkinen 2017-11-0=
5  345   * tpm_send - send a TPM command
> aad887f6641145 drivers/char/tpm/tpm-interface.c Jarkko Sakkinen 2017-11-0=
5  346   * @chip:      a &struct tpm_chip instance, %NULL for the default c=
hip
> aad887f6641145 drivers/char/tpm/tpm-interface.c Jarkko Sakkinen 2017-11-0=
5  347   * @cmd:       a TPM command buffer
> aad887f6641145 drivers/char/tpm/tpm-interface.c Jarkko Sakkinen 2017-11-0=
5  348   * @buflen:    the length of the TPM command buffer
> aad887f6641145 drivers/char/tpm/tpm-interface.c Jarkko Sakkinen 2017-11-0=
5  349   *
> aad887f6641145 drivers/char/tpm/tpm-interface.c Jarkko Sakkinen 2017-11-0=
5  350   * Return: same as with tpm_transmit_cmd()
> aad887f6641145 drivers/char/tpm/tpm-interface.c Jarkko Sakkinen 2017-11-0=
5  351   */
> aad887f6641145 drivers/char/tpm/tpm-interface.c Jarkko Sakkinen 2017-11-0=
5  352  int tpm_send(struct tpm_chip *chip, void *cmd, size_t buflen)
> c749ba912e87cc drivers/char/tpm/tpm.c           Mimi Zohar      2010-11-2=
3  353  {
> 412eb585587a1d drivers/char/tpm/tpm-interface.c Jarkko Sakkinen 2018-10-2=
6  354         struct tpm_buf buf;
> c749ba912e87cc drivers/char/tpm/tpm.c           Mimi Zohar      2010-11-2=
3  355         int rc;
> c749ba912e87cc drivers/char/tpm/tpm.c           Mimi Zohar      2010-11-2=
3  356
> fc1d52b745bae6 drivers/char/tpm/tpm-interface.c Stefan Berger   2018-06-2=
6  357         chip =3D tpm_find_get_ops(chip);
> aad887f6641145 drivers/char/tpm/tpm-interface.c Jarkko Sakkinen 2017-11-0=
5  358         if (!chip)
> c749ba912e87cc drivers/char/tpm/tpm.c           Mimi Zohar      2010-11-2=
3  359                 return -ENODEV;
> c749ba912e87cc drivers/char/tpm/tpm.c           Mimi Zohar      2010-11-2=
3  360
> e29a07b835695b drivers/char/tpm/tpm-interface.c Jarkko Sakkinen 2019-09-1=
6  361         buf.data =3D cmd;
> 47a6c28b6861b1 drivers/char/tpm/tpm-interface.c Jarkko Sakkinen 2018-11-0=
5  362         rc =3D tpm_transmit_cmd(chip, &buf, 0, "attempting to a send=
 a command");
> e29a07b835695b drivers/char/tpm/tpm-interface.c Jarkko Sakkinen 2019-09-1=
6  363
> 412eb585587a1d drivers/char/tpm/tpm-interface.c Jarkko Sakkinen 2018-10-2=
6 @364  out:
> 4e26195f240d73 drivers/char/tpm/tpm-interface.c Jason Gunthorpe 2016-02-1=
2  365         tpm_put_ops(chip);
> c749ba912e87cc drivers/char/tpm/tpm.c           Mimi Zohar      2010-11-2=
3  366         return rc;
> c749ba912e87cc drivers/char/tpm/tpm.c           Mimi Zohar      2010-11-2=
3  367  }
> c749ba912e87cc drivers/char/tpm/tpm.c           Mimi Zohar      2010-11-2=
3  368  EXPORT_SYMBOL_GPL(tpm_send);
> c749ba912e87cc drivers/char/tpm/tpm.c           Mimi Zohar      2010-11-2=
3  369
>
> :::::: The code at line 364 was first introduced by commit
> :::::: 412eb585587a1dc43c9622db79de9663b6c4c238 tpm: use tpm_buf in tpm_t=
ransmit_cmd() as the IO parameter
>
> :::::: TO: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
> :::::: CC: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
>
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Ce=
nter
> https://lists.01.org/pipermail/kbuild-all                   Intel Corpora=
tion



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdktGCk0MDRvph_%2B0-i1qGyjfLe%2BNnC04iceO2Z%3DjJ5EBg=
%40mail.gmail.com.
