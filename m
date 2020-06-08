Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPH7673AKGQEBR5NSSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 868821F1502
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 11:07:09 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id 93sf7586407oti.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 02:07:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591607228; cv=pass;
        d=google.com; s=arc-20160816;
        b=0A4BEWMpV4Eh80Mgnv7ovphtAw9AdFvgoLhUmw47VYBotECqCb1k7LY+OIfQblmWOB
         6bCvwLxtDgOvN19xZ8JIFXZzltU/MNZ5NTgqnDTQIqI4X5bNv8jlKUx7U3XIDk76QUYm
         21erXHEeJkLLGuCcQeVe4ZU5XhZM74uuAA8/LfVmho6gwksaZI+Z9ATQ2axjmFCG0/6m
         HIW+aFEAliC2Y8ytMZzQZqlgtaP3zou5Z6HQZk2FsbIUfK8R5H109x5T8Xsjgh9LwTA1
         p+PwLNThC4rMOKahJ72QjbkcHpIphJLCV2arcsNfzLw/PNNnGcGN0b1tRsZ2UjP23wCd
         fhgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=Sfdk0CtSszeqOzqBF9m+bxw5bgm7ASRAoYE/SKai4ak=;
        b=bP9VwiTbNcgcj5Cx1/byW8ywrOdLvtzVAL3qz6I91gw3cz5btQ+fP+jSa8z+xOeR4R
         uGD0bf99KWFkQ6FWGpJ7PFcTgl6BM3pxQ8MJ2FyQ5UmalnYwP2/sggybdqHCAOlMZWc3
         oTIArfboJV+aWOIu1O9EZ+K0aHHlizRdUv/Tzr1P3+kimsXf5Q+wP5ztrO1XFOxenDEV
         i0s1Et2H3EeIYgGIpuOSzuSOSwXPnELSH61D7jUs/Vr8F5ObuldVFT3i9Dgx4L1iTGcV
         el5uA8DlzaOFUKVsYmyqITUAXnHiZXyqC5c0b7v1IFhLXEl0QuMsVoK+6k8Z0Q9QsBC3
         ioRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nABDCeEM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sfdk0CtSszeqOzqBF9m+bxw5bgm7ASRAoYE/SKai4ak=;
        b=fstOI9ctFOyNR4m5E3Ef7g59U6aJZwLqv7ZS3EWmb6Q3mT+tGlFPeJWVrmaNwPfLpB
         Tay4NxjlDE22W2nkBhduGnoL+mqykOK1+QZ9CyRioWs90Sfv7fd2BIKODTluUoA8d/KA
         lTRy7MZe0Inz2/KP1Ob4A9hEzeedaqbzSArvs9xcJeO4SPeyaxMVwMBLglQ7JG/XKCmo
         09zU6ecGWgM6zVKqwBR6VfcufyzeRurcewO0Uld+1qFFSL3F1X3G5liQK28x01nxSUV1
         3J+f6QR5LmC2edRe/R9sXlPDZ5mm++fXE55OQzRbLTSkwdCwMMethgVnRvn6ju5AnSg/
         km4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sfdk0CtSszeqOzqBF9m+bxw5bgm7ASRAoYE/SKai4ak=;
        b=oA+X89Ji7zLGUtctEocr0YVANvz7F6YUZJdlDxvyWfdv3yug8m+DUhB3mGsk15FQGt
         rdulYExItdwyUuJSlyVSbJ71kzUJqcYvNQbO/CUu3xiOx8naqy7apbMPmlhmpMU2T3hg
         DgB9z5g0kHtgNdyrnMGjcU+X6isf1fa/tegodStsTW2XyF9r2hSWNMnbUGjaIDypYMO3
         hHjAyz/aeO1JzmDvvHbvfPdZFY0Y5QIhsnzrWS8pe8OIJiR8LiLPQ8jUtbDrE3tIxDMX
         SnYQvPBIcrnWGlbYtv7tJjLYPYiRI7j2E+pm6GKFfpUc2amug37zLBpCHnQwFfX+Fp7i
         wT/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Sfdk0CtSszeqOzqBF9m+bxw5bgm7ASRAoYE/SKai4ak=;
        b=sAy3QqHMqEgDO60ljzalRi1ebek09G+403a8udK7de1QtwYJLwiF0IRHvXi6dj9wO/
         by3bdrqNknHSK5WmZHWInERJCp0fgr+TFJVrZ9Ew5/faHCCNoqBAcNBBytndNEi+tZN5
         6B4qzEusBwDp8NOwO8Vx6yAUpNjofmBZe1pGtTL1rllH3D0pWcWsDwrZBxl2cXwtX4RO
         SZjtQcxXzyCfJdewVDNjtINfiMWY6dY0w1PZxbZMMOUQ6R1Op8Q/zCTTQlqEibC+LBZ6
         hKqmWVhHGsmfZbUrycW8uziJTJ+fx4my2Brs3C76j2Dl8UuO2Fh7urakLCzriEzHkVXM
         KCIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OUm8ptduMrl35n4eA/1Zq8TKUP0Ink6hYS2/X0KDhTUGXcSmL
	jlwDLtOxexFHlVgfTFs0tpc=
X-Google-Smtp-Source: ABdhPJw+XqE2JR+wBPQBrlWRZRG0QXNFAirBWjaQjcAYuD2zQCvLQeqJ8xhLHpTp5GO/+JUQjjYgdA==
X-Received: by 2002:a4a:e836:: with SMTP id d22mr16639894ood.54.1591607228132;
        Mon, 08 Jun 2020 02:07:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c7d2:: with SMTP id x201ls2989489oif.8.gmail; Mon, 08
 Jun 2020 02:07:07 -0700 (PDT)
X-Received: by 2002:aca:e1d6:: with SMTP id y205mr10236906oig.142.1591607227847;
        Mon, 08 Jun 2020 02:07:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591607227; cv=none;
        d=google.com; s=arc-20160816;
        b=aYfg/4c/xMocIbXGqGMHY8qZPUYUg6G9ZrRUsVZyXq/cOX2jgSYjj3GjEaW/HRgtkn
         vW8Mup7tb3glApy4At4BiAssuv/Qy9o7f8TOn60s/OWOu+yCOmJT8J4sbADAxKTAH/2Y
         fuFvIVQ8TTX1s+LbqoCbEnh669dWKAtuNyKBnvsA7WunbMMzF6x3yz3bxJtW8ZYvOXxi
         SgxXid14vLYp4/NIAjCV6ksWEqNLf5+eSS5aY5WUJ8raHdINGXeAHqU+uGdimAg5KbEf
         /5XafvvvmUuFCw+/yeiJSUP/6zGOaItUfI9q+KRNwXH7X4aSSZCYLnZQbODRhjumvkrE
         mKXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=kyMIQpiaSrHfD4wH9LTT6NvRIK3724cSEnBCBR1wvMQ=;
        b=jYY/E0ZTpsnOHhvKeXzg49fS0yqFsgvRY/X0T552FH2sGifTa3lrM3CDf1Ja+cWg9s
         C6OT7qY92w0kqnLAYSmXDwN/SHOcfVtU3AIRv4mk3LV1n9cKGFYD9fGn3fOHNlHv4GnM
         kMJIQbHlDCO8ZaMa0XV32KnG7fTcuF8Qo/hWDcOZFKMOSdsUoh1JP0oHj/ZD/fcPyLBD
         tUdjzzUMbllvIhfyQOGzNgIzzrKir294YUGjpp5BSmns31hRyovoVsOAAGN4XH7w7gNc
         ewcnH/Oe1QyUlFbr+OJCOhkhuLNHivgQDnC3pAyZbh59N9RZmBH0P4j6MEi7Bv1s7VEV
         1kDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nABDCeEM;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id d25si535754ooa.1.2020.06.08.02.07.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 02:07:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id t6so3806110otk.9
        for <clang-built-linux@googlegroups.com>; Mon, 08 Jun 2020 02:07:07 -0700 (PDT)
X-Received: by 2002:a9d:27a3:: with SMTP id c32mr17871531otb.233.1591607227454;
        Mon, 08 Jun 2020 02:07:07 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id 126sm2321493oii.39.2020.06.08.02.07.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2020 02:07:06 -0700 (PDT)
Date: Mon, 8 Jun 2020 02:07:05 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Robert Marko <robert.marko@sartura.hr>
Cc: kernel test robot <lkp@intel.com>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>, sboyd@kernel.org,
	Abhishek Sahu <absahu@codeaurora.org>,
	linux-arm-msm <linux-arm-msm@vger.kernel.org>,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Christian Lamparter <chunkeey@gmail.com>,
	John Crispin <john@phrozen.org>
Subject: Re: [PATCH] clk: qcom: ipq4019: fix apss cpu overclocking
Message-ID: <20200608090705.GA1597633@ubuntu-n2-xlarge-x86>
References: <20200604120905.1344074-1-robert.marko@sartura.hr>
 <202006050445.tiQi7ZvY%lkp@intel.com>
 <CA+HBbNFpHugbM6LDGAtJHj4ZAz-K5ojkovaVZ04V3QJS-hytUw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+HBbNFpHugbM6LDGAtJHj4ZAz-K5ojkovaVZ04V3QJS-hytUw@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=nABDCeEM;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Jun 08, 2020 at 10:54:34AM +0200, Robert Marko wrote:
> On Thu, Jun 4, 2020 at 10:25 PM kernel test robot <lkp@intel.com> wrote:
> >
> > Hi Robert,
> >
> > I love your patch! Perhaps something to improve:
> >
> > [auto build test WARNING on clk/clk-next]
> > [also build test WARNING on v5.7 next-20200604]
> > [if your patch is applied to the wrong git tree, please drop us a note to help
> > improve the system. BTW, we also suggest to use '--base' option to specify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Robert-Marko/clk-qcom-ipq4019-fix-apss-cpu-overclocking/20200605-002859
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-next
> > config: x86_64-allyesconfig (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ac47588bc4ff5927a01ed6fcd269ce86aba52a7c)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install x86_64 cross compiling tool for clang build
> >         # apt-get install binutils-x86-64-linux-gnu
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> >
> > >> drivers/clk/qcom/gcc-ipq4019.c:1247:24: warning: no previous prototype for function 'qcom_find_freq_close' [-Wmissing-prototypes]
> > const struct freq_tbl *qcom_find_freq_close(const struct freq_tbl *f,
> > ^
> > drivers/clk/qcom/gcc-ipq4019.c:1247:7: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > const struct freq_tbl *qcom_find_freq_close(const struct freq_tbl *f,
> > ^
> > static
> > 1 warning generated.
> >
> > vim +/qcom_find_freq_close +1247 drivers/clk/qcom/gcc-ipq4019.c
> >
> >   1245
> >   1246
> > > 1247  const struct freq_tbl *qcom_find_freq_close(const struct freq_tbl *f,
> >   1248                                               unsigned long rate)
> >   1249  {
> >   1250          const struct freq_tbl *last = NULL;
> >   1251
> >   1252          for ( ; f->freq; f++) {
> >   1253                  if (rate == f->freq)
> >   1254                          return f;
> >   1255
> >   1256                  if (f->freq > rate) {
> >   1257                          if (!last ||
> >   1258                             (f->freq - rate) < (rate - last->freq))
> >   1259                                  return f;
> >   1260                          else
> >   1261                                  return last;
> >   1262                  }
> >   1263                  last = f;
> >   1264          }
> >   1265
> >   1266          return last;
> >   1267  }
> >   1268
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

<moved post to the bottom>

> Sorry for asking, but are these warnings relevant?
> GCC9.3 does not throw them
> 
> Regards
> Robert
> 

It should if you are using make W=1, this is not a clang specific
warning (it just happens that clang was the compiler for this report).

It looks like qcom_find_freq_close is only used in
drivers/clk/qcom/gcc-ipq4019.c, in which case it should be marked
static.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200608090705.GA1597633%40ubuntu-n2-xlarge-x86.
