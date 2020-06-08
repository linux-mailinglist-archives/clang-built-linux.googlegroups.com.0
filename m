Return-Path: <clang-built-linux+bncBCC6FDHX24JBBQEQ7D3AKGQE2XG2UAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5AB1F15B5
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 11:43:29 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id d20sf1702288iom.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 02:43:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591609408; cv=pass;
        d=google.com; s=arc-20160816;
        b=SrIYkhStjcId+ZpzrAk191m2bhJodVxRozA4DrCRUJTbxKerx+ZjdIiSjexfUMq70v
         9I3UA2KSlsJWTQ/NCistmiXMMLaqm42hDG/nmAnEOW+piO/kkfNWQmjY2eyoyf3Pegxd
         aqs7kSQHVhPCeNJxAJYOfNqIG1X+8bc6euuem4/kEa6YPMXmbFKbZ40XhcHMPiNlaAXe
         si0bNiFq27PbwdDDnhAWsdPWILVX0Z9F2iSyV0jDtz7XENrFgqEI9aIL11G2ZfcOkLUE
         5WImS6Xt84HyBDw7xXF1TzYabKSd+gJDLhkDVWR0AE3HFUTm9BE6w1TJTMImadmRlCyG
         bKng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=NPjESIKAL5LJqlAs2LmEaeBWCcxHsf5y1SMgHmkMrds=;
        b=zykKyT6hmwtTi1OkYJFcL/B+QLMKoYmMQZ9JxuEyEnnwFsXviY9JuXxxOp8Lyv/7VS
         c1ZNIcKEyQfpxfmEvYMU8NBsG/3pW8rRZN4I2YDK1/GTvjTEr2DpkL3wSMs/I5S83hD5
         6KTeUKEAtvXELpAhVVgFb2BrSxLhQpATi1JGEZsUxfMra3OLSS/QZ6BUtkW04699cs6b
         3LOrfQBY+03kxvCZESoF4fgnDGGR+0woM9QPJ2rvFq8dnmfaz69jfos1Uzt2ImRNav1F
         QQpBrTQBTy2LKtK1mmjZbD35NLh2ozZ4t2ShDwGcFg5WsNd6m8/bQAtNtxnGbCp/eysP
         +sIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623 header.b=mx5PE7c9;
       spf=pass (google.com: domain of robert.marko@sartura.hr designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=robert.marko@sartura.hr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NPjESIKAL5LJqlAs2LmEaeBWCcxHsf5y1SMgHmkMrds=;
        b=lTD1gj8TYrUVVYLts3RINABgLKtEd94AxGVaFlOGz7uzZXEFp8EhBZMzE3RkXghVJE
         7zaO+IfJFKjCL4SzzzKz4WfIlqtFQ+hnCPCF7PITF0CUrsixubUj+N8WhDQwH/80P4y/
         Kcy2O8m8I4DHKBeemNzL3jbflsGesJ1QxT+RfV7th4vxK4MnAP+EncRmov3IZMrDqSGv
         V4XV89T3oNnDs5GPh2H/IC3q2/Xefn4ECzuvPZZZ0qdACVltdDHz/NGD9C9YSyhkLlZk
         HjGQmtDBk8f2yaSL0EKf5NNrxXUqNtT8OkpCiaMYVYykrwmu3WrvSGvHyzQZFzwRGbBc
         S6Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NPjESIKAL5LJqlAs2LmEaeBWCcxHsf5y1SMgHmkMrds=;
        b=p9KA5NN3nO9910b/mrJi2PFPh+D1xrZiG2Utu1tj1xS/rQbZKFFi/H5ZDTUoWzYZjR
         McRCyk98IO6E3ODzaXdzA/Zlq5qxIVY5Wsuex9rFL6sgiRgjfg8xoa8v87A11ItdeDDv
         uvoX3x4xxOedlekW+lG9bHXAzJJ+CSrXdezuPV20xhVzrC0F4XCWVq5K6VrD0h0djSB+
         9xG2MbIzA4WqH5Ks4+dJQgoNTvISwDvf5WAIeMGb3L8f3FsLq8639JcKSDqormpOobtr
         P2QbCn+8fpJXI57JYgffsmUWaHTs0wbTQSKBCvQ5jpBoD16HXlhOGK8pfIe+O+FlSLhz
         azQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320g6WqcH9mFRDh/+7ZoFzivNAe7V0HxOMVb8wrFOG6ULYi93YG
	z0wwlObWT0twkNFWn35isiU=
X-Google-Smtp-Source: ABdhPJzK3BqPXmCNOj4WHEqD0KNTh1xzg9BQAMa7llaPTrRPSvdMH8gkmAbM4VkknM8kYHtG5ZvT8w==
X-Received: by 2002:a6b:f117:: with SMTP id e23mr21030771iog.100.1591609408451;
        Mon, 08 Jun 2020 02:43:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:228b:: with SMTP id y11ls2031074jas.10.gmail; Mon,
 08 Jun 2020 02:43:28 -0700 (PDT)
X-Received: by 2002:a02:a91a:: with SMTP id n26mr21409164jam.104.1591609408033;
        Mon, 08 Jun 2020 02:43:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591609408; cv=none;
        d=google.com; s=arc-20160816;
        b=jYeghRFQVqlFAE9jcKIBVHez5dzWAnkDruNOYq8hdvSAeJjI3aMhexQLD5sP2feZmc
         kuVFkI3d9tiQu/Z3WMji3Car76JarOoJ5ptcyqIfK6gVIZ5xW+FhkT2Urw83lMMswmRN
         GF+JI9dk3YNkSGTCNtCxw2AeX4GJWFlhNEOnuTQMJVvTS7m/K52hx/4vipvxOSagONIV
         p7I0XIzkPKDx5N5wr3EoLsL0L4wbYNVAA62j+vgb8ebYTp8h+PHV+lWifwjWAEdTj89r
         hdzxTz62di/e5GX2cRhNpTjvhFTXDy0CcnTF6dyKcoMymW8iKDVGdu3TM/OMWhTFpGtE
         pWkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TYEy+8z/tFUxcc58fN1UDywpoBpG6q97Kp55SPoLlFQ=;
        b=KCRS16WM2GPj+4lDlal+v1PoI0x/kh7w3S+luumx/valqnbtkqyyz+oeS9rE5x/THo
         4FQZFQcA5CClq6yuZKsZWrf/fcca7TNZB5V8nnu6Iz4zWWgyXBXBWgoFr7y/JJWt8Nlv
         21pGYDk3suNzbIqH5bAK+/PG9trN+MQhX9c0BGncCkmTfKcgL3jDxyrIITwTOLGr5IJS
         XwRFYTq4gj1TWQVbQTVgz8Q5LB+hzaNOYPHDrdov7ZUa7mghXgz1DxM/7RjX9L6TgfQU
         kHqGxsbUiSXfaDHFFQgXmmjSWTiaUN+kWPfdv95ZTrIA1KUAupqIt3uvmi5QPIwuB9X2
         BgWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623 header.b=mx5PE7c9;
       spf=pass (google.com: domain of robert.marko@sartura.hr designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=robert.marko@sartura.hr
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id y22si620760ioc.0.2020.06.08.02.43.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 02:43:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of robert.marko@sartura.hr designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id k15so13125067otp.8
        for <clang-built-linux@googlegroups.com>; Mon, 08 Jun 2020 02:43:27 -0700 (PDT)
X-Received: by 2002:a05:6830:60d:: with SMTP id w13mr16894582oti.243.1591609407458;
 Mon, 08 Jun 2020 02:43:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200604120905.1344074-1-robert.marko@sartura.hr>
 <202006050445.tiQi7ZvY%lkp@intel.com> <CA+HBbNFpHugbM6LDGAtJHj4ZAz-K5ojkovaVZ04V3QJS-hytUw@mail.gmail.com>
 <20200608090705.GA1597633@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200608090705.GA1597633@ubuntu-n2-xlarge-x86>
From: Robert Marko <robert.marko@sartura.hr>
Date: Mon, 8 Jun 2020 11:43:16 +0200
Message-ID: <CA+HBbNFPtHK3AJBnY3TOG67tciW01rEoYaaAu+A7GP0pdcTsvw@mail.gmail.com>
Subject: Re: [PATCH] clk: qcom: ipq4019: fix apss cpu overclocking
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kernel test robot <lkp@intel.com>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, Michael Turquette <mturquette@baylibre.com>, sboyd@kernel.org, 
	Abhishek Sahu <absahu@codeaurora.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Christian Lamparter <chunkeey@gmail.com>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: robert.marko@sartura.hr
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623
 header.b=mx5PE7c9;       spf=pass (google.com: domain of robert.marko@sartura.hr
 designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=robert.marko@sartura.hr
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

On Mon, Jun 8, 2020 at 11:07 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Jun 08, 2020 at 10:54:34AM +0200, Robert Marko wrote:
> > On Thu, Jun 4, 2020 at 10:25 PM kernel test robot <lkp@intel.com> wrote:
> > >
> > > Hi Robert,
> > >
> > > I love your patch! Perhaps something to improve:
> > >
> > > [auto build test WARNING on clk/clk-next]
> > > [also build test WARNING on v5.7 next-20200604]
> > > [if your patch is applied to the wrong git tree, please drop us a note to help
> > > improve the system. BTW, we also suggest to use '--base' option to specify the
> > > base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
> > >
> > > url:    https://github.com/0day-ci/linux/commits/Robert-Marko/clk-qcom-ipq4019-fix-apss-cpu-overclocking/20200605-002859
> > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-next
> > > config: x86_64-allyesconfig (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ac47588bc4ff5927a01ed6fcd269ce86aba52a7c)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>, old ones prefixed by <<):
> > >
> > > >> drivers/clk/qcom/gcc-ipq4019.c:1247:24: warning: no previous prototype for function 'qcom_find_freq_close' [-Wmissing-prototypes]
> > > const struct freq_tbl *qcom_find_freq_close(const struct freq_tbl *f,
> > > ^
> > > drivers/clk/qcom/gcc-ipq4019.c:1247:7: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > > const struct freq_tbl *qcom_find_freq_close(const struct freq_tbl *f,
> > > ^
> > > static
> > > 1 warning generated.
> > >
> > > vim +/qcom_find_freq_close +1247 drivers/clk/qcom/gcc-ipq4019.c
> > >
> > >   1245
> > >   1246
> > > > 1247  const struct freq_tbl *qcom_find_freq_close(const struct freq_tbl *f,
> > >   1248                                               unsigned long rate)
> > >   1249  {
> > >   1250          const struct freq_tbl *last = NULL;
> > >   1251
> > >   1252          for ( ; f->freq; f++) {
> > >   1253                  if (rate == f->freq)
> > >   1254                          return f;
> > >   1255
> > >   1256                  if (f->freq > rate) {
> > >   1257                          if (!last ||
> > >   1258                             (f->freq - rate) < (rate - last->freq))
> > >   1259                                  return f;
> > >   1260                          else
> > >   1261                                  return last;
> > >   1262                  }
> > >   1263                  last = f;
> > >   1264          }
> > >   1265
> > >   1266          return last;
> > >   1267  }
> > >   1268
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
>
> <moved post to the bottom>
>
> > Sorry for asking, but are these warnings relevant?
> > GCC9.3 does not throw them
> >
> > Regards
> > Robert
> >
>
> It should if you are using make W=1, this is not a clang specific
> warning (it just happens that clang was the compiler for this report).

Thanks, W=1 does indeed show the warning along with a not evaluated return.
>
> It looks like qcom_find_freq_close is only used in
> drivers/clk/qcom/gcc-ipq4019.c, in which case it should be marked
> static.
Thanks, it does indeed solve the warning.
I will send a v2 today.

Regards,
Robert
>
> Cheers,
> Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BHBbNFPtHK3AJBnY3TOG67tciW01rEoYaaAu%2BA7GP0pdcTsvw%40mail.gmail.com.
