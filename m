Return-Path: <clang-built-linux+bncBCC6FDHX24JBBVXZ673AKGQEEZ2FA2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 829ED1F14C0
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Jun 2020 10:54:47 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id l25sf12633969pgn.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 01:54:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591606486; cv=pass;
        d=google.com; s=arc-20160816;
        b=hK+oByyyilIuYa4uDiS/8WzPV9OLFGt3bzE5wMhNcvLeUcDcMbssSgpw88IQPn0ag7
         QaDnhS11T940cdzjYccAp+coeUJSc9avB5XVGJByjjX4exozq3fA+MBo4BvfHh8eywtf
         0+tIQnh88kHJfihgLNUisEPYtAmv5O4CO1A1Ouqw3cadnTNrlCuaUokynXa3PwhtTMi8
         0UIFWmM3VtjpVjlZ85lU0enHQJjle3ItpN/O1D0gjGPQUQqbDNMsSTKr+4nwYy7b5bzE
         WWG3vpQKd/zx22Zfff/zuzj0iu/qeb2kdvpPbkT5bUL7Dw0NwRlZu8Tf8dGPWS4ydeXY
         eS3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=PVN9qN/laVJBJve5GBbqO39hSqHyIDBevMM6D0ONNRE=;
        b=Y6YPzF+xxruCmMgaPvF2thnPi3x2RayTwxDcApGZS7bEqk3UnMknOQ1eFEqo02mAJH
         JV8SWEOH3CcMCSvbR0ojb1Hk/674Iv1oEm9ogEKieviE1EJQDf3CUQ6zN3JoVD3ZnQoK
         XMLiAOvQd0KI5XjpaNJ3Z3jOEqzXpD5qw90SKRFeeXYakAiBS+bSDwn2i4Ju62eIyJnh
         +c+CEnTa8Kj5Rz8r9NmeeY8PD+dSLkVTEMMxvEQWi1q1/YPnuMxsyEG3CCnoSWdbCVuF
         L9NhrU5hA2lGxl12Cl9pI/vEWV5tNJybKsSLp3ReboGa9AFVlOWU1Ca4lfMQRDo6Y6y8
         wzUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623 header.b=oyN1beHn;
       spf=pass (google.com: domain of robert.marko@sartura.hr designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=robert.marko@sartura.hr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PVN9qN/laVJBJve5GBbqO39hSqHyIDBevMM6D0ONNRE=;
        b=YsRLFVcoKSw+sUzg7faH7+23UBahMSwT4H1qHzmLYAmXfiUHNMIvRgEY1t/Z07jxoK
         Fd9BL2NUF5XvDWR2tWdNchIXMBBrIVsUltM6uKsjjW5uwWBrWosRL8xl/g/XX5CU/TCr
         0pZJJH9E7XeSg88DSKRrcsal3R6TRCkz2g18wkuuFBRcl447zdXXSWC+xC292j23RMpP
         tIWMdFDuOnI/cCBD8QGm7ObezU83M9e0NJVffPrd1dZAsUmvli+hMqBSPnH/valdKGJb
         uNKzZ7xFfGxu6fZRONK9gTu6pI4m/7svSHN5jvl9+RmpD2VVhRHzU+w9rqhDoA3UwKuw
         of5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PVN9qN/laVJBJve5GBbqO39hSqHyIDBevMM6D0ONNRE=;
        b=a46yAQvreUFPkQUdkHa2Am8TVdf31RFaOXMikbPqQ6Iqy3zo4ZvzfSTvTxmsPFo2VM
         R8nsYSeoDhim8E199LCVfz6TglK01YKCotVyp5Gc/Y3+GfQMxDug8Lwq070yvERXE70y
         mpExk28e0xkI1fgVaPAE+rGtPoBrBQmxpUcdKeaMW0DoMeM64ke5bI4JomQLMg/ih4w6
         SKHI5E7utu/GgRp8yURoFiLeTzkz8ZYIqLOsYaYjvoOQw6vXQfSd4jku6NiyuYKo48nR
         pNfyCRhUwdGIXs3dv1qtMLhqKQWIETfItzXgCHktN76a2FEuwIm2blupfiwljJQ/EmIA
         lFCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5338zjIcdjaYsR0pgBON4ZZ6et4IjSodI8w/fI8WMdxN3gIAKHoI
	LFbxExhaUxJ00fr7S4A8rRs=
X-Google-Smtp-Source: ABdhPJwN0msg4tCSQpxFQdf+dI9AkyXYUkOaXjRDUakNv6+TC5GlrQMPXZh3Gxtprm/da7YGlGm4Fw==
X-Received: by 2002:a17:902:8f85:: with SMTP id z5mr20115110plo.152.1591606486195;
        Mon, 08 Jun 2020 01:54:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:28c7:: with SMTP id o190ls4354882pgo.3.gmail; Mon, 08
 Jun 2020 01:54:45 -0700 (PDT)
X-Received: by 2002:a62:8cc7:: with SMTP id m190mr16619877pfd.174.1591606485739;
        Mon, 08 Jun 2020 01:54:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591606485; cv=none;
        d=google.com; s=arc-20160816;
        b=Wi+bnQyOTZyRVjJOwWZDi5VakZm8u2tBFSRgRZZj34ONCeXNC2wbzXNzy14QQ9kCeF
         3F0GZU/sKVuZ6qr/ZIIstDGFUUYYuTQtOMvSnPWcyuWAwgojGZNgmeoYMFdsvFEs46Nn
         E+s58yJOOcYjj4ZNhqqpTKGypNsXi1KVvaMvBkk5db20d9QsDYup0l0btGmJ6QsG4SSb
         TRUFDxA5eFE7BtA9jslGXlqeB5JFWtxr+TnWGyYhi3Ut+onyBbkh4RF1BJdScdtawODx
         THfGM67DAEk2yLImISRmh0XVtjPTzmi3ecaxJZB1N42HkiBrQet62D47NEEQ6SSwzeKg
         0zow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ROtyPLWOkg3okEi0NwLW2pBM+z9aAMRVrxbgfI3b4pA=;
        b=m9zz8iwrdygiVWE+2MSTB28bmzZSnCc/1PLivui1IB34XIaaKl+LJY6x/Q0afImGL2
         ueC7WHQ4HqXLCHeibzQeRAd+rfHnSq5eGbc+cq13I9Ba0uFBJCvatVe4ua1HOpeP7Giu
         E2A1xharwA+TFga8MjzE5tjXnTKhRV7JVqh4ZA2A4PzVyUpzHdPf4Xpl9f3pG2VHH7KG
         SO/7PnyTVv856d8Z17+NXJk3jRIpPX3VbWt2meCeJD3adf+bwbhRic9a0KvwvdMNtw/D
         fi88JQviQMEutUUWR8pVsgNtAmvFq0PnvqaS6nHGHQ/YODnEC9vbA+ueDrz8qpNlh1ii
         Dr9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623 header.b=oyN1beHn;
       spf=pass (google.com: domain of robert.marko@sartura.hr designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=robert.marko@sartura.hr
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id q19si286407plr.1.2020.06.08.01.54.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 01:54:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of robert.marko@sartura.hr designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id p70so14552735oic.12
        for <clang-built-linux@googlegroups.com>; Mon, 08 Jun 2020 01:54:45 -0700 (PDT)
X-Received: by 2002:aca:a8c3:: with SMTP id r186mr9889996oie.173.1591606485156;
 Mon, 08 Jun 2020 01:54:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200604120905.1344074-1-robert.marko@sartura.hr> <202006050445.tiQi7ZvY%lkp@intel.com>
In-Reply-To: <202006050445.tiQi7ZvY%lkp@intel.com>
From: Robert Marko <robert.marko@sartura.hr>
Date: Mon, 8 Jun 2020 10:54:34 +0200
Message-ID: <CA+HBbNFpHugbM6LDGAtJHj4ZAz-K5ojkovaVZ04V3QJS-hytUw@mail.gmail.com>
Subject: Re: [PATCH] clk: qcom: ipq4019: fix apss cpu overclocking
To: kernel test robot <lkp@intel.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>, 
	Michael Turquette <mturquette@baylibre.com>, sboyd@kernel.org, 
	Abhishek Sahu <absahu@codeaurora.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Christian Lamparter <chunkeey@gmail.com>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: robert.marko@sartura.hr
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@sartura-hr.20150623.gappssmtp.com header.s=20150623
 header.b=oyN1beHn;       spf=pass (google.com: domain of robert.marko@sartura.hr
 designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=robert.marko@sartura.hr
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

Sorry for asking, but are these warnings relevant?
GCC9.3 does not throw them

Regards
Robert

On Thu, Jun 4, 2020 at 10:25 PM kernel test robot <lkp@intel.com> wrote:
>
> Hi Robert,
>
> I love your patch! Perhaps something to improve:
>
> [auto build test WARNING on clk/clk-next]
> [also build test WARNING on v5.7 next-20200604]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Robert-Marko/clk-qcom-ipq4019-fix-apss-cpu-overclocking/20200605-002859
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-next
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project ac47588bc4ff5927a01ed6fcd269ce86aba52a7c)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
>
> >> drivers/clk/qcom/gcc-ipq4019.c:1247:24: warning: no previous prototype for function 'qcom_find_freq_close' [-Wmissing-prototypes]
> const struct freq_tbl *qcom_find_freq_close(const struct freq_tbl *f,
> ^
> drivers/clk/qcom/gcc-ipq4019.c:1247:7: note: declare 'static' if the function is not intended to be used outside of this translation unit
> const struct freq_tbl *qcom_find_freq_close(const struct freq_tbl *f,
> ^
> static
> 1 warning generated.
>
> vim +/qcom_find_freq_close +1247 drivers/clk/qcom/gcc-ipq4019.c
>
>   1245
>   1246
> > 1247  const struct freq_tbl *qcom_find_freq_close(const struct freq_tbl *f,
>   1248                                               unsigned long rate)
>   1249  {
>   1250          const struct freq_tbl *last = NULL;
>   1251
>   1252          for ( ; f->freq; f++) {
>   1253                  if (rate == f->freq)
>   1254                          return f;
>   1255
>   1256                  if (f->freq > rate) {
>   1257                          if (!last ||
>   1258                             (f->freq - rate) < (rate - last->freq))
>   1259                                  return f;
>   1260                          else
>   1261                                  return last;
>   1262                  }
>   1263                  last = f;
>   1264          }
>   1265
>   1266          return last;
>   1267  }
>   1268
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BHBbNFpHugbM6LDGAtJHj4ZAz-K5ojkovaVZ04V3QJS-hytUw%40mail.gmail.com.
