Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVPLVX2AKGQEFA3LIAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4AA19FD3A
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 20:32:54 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id p2sf713564oic.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 11:32:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586197973; cv=pass;
        d=google.com; s=arc-20160816;
        b=XYDozd/cFa1+maOKQ0eVHinMhtNeKihel1o7z65q2Tn9TVSWqKlNf6ONhA623XgS+Q
         SSUBz+QIINeld510cIS70HHO3Ylk+CJvKy/np2Re+8uCOD/XoYfAoh1IsVBGlZntXjL4
         /j72fgAW/XoiVaRVPIo2L2XF9MYPlTNiAIDuSP6AFKJNrLFSQzlGcSHYDYhurtJMD4vV
         9dSMgMOPaNQDoJIxbnFWJiSV3w+dQ1tehhDSLb2T+Orz9dauG9WQmRIVGmV3BTkoJB1N
         cS34opiUn9Z1NVe1ALl3JwG8hgCoRnmLMXZP4ymhoVfcciQ9Tn8frPRMVKdxdMNjhZM3
         v3NQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=uJ89Pw9blJaciLvazOslSY6CfbBW2UjbJnPLm3IH9wY=;
        b=OJn6DKjsRKwELVQ1T16VVUbG0mFdwjuq7JyGpjEcGAsCFrLPyqXVqmYyWrNdOhD498
         iSt1B6l1SsiyoD4P+q6Rh2t75WNpEyFfO5sofkt1jRbI1Rb9nuRKvEYDQJKhR0SnZY3U
         FYCjQ7/1DsCQBIsnjF2Ps7kM8CwBctz9NI8k4hcrQTUFmz5Pr01ZpzPWwMTxMlUHHbQQ
         UA0aChw2eZeEEJZOJc3u0vhNYJ474cnxh1g3nubjn5rakPYnlI9Xi7J2KysfaxLWT0GC
         WFhZKd6o4ePDlkemPCe5MhhICJFg+P2kMgtIdUwB7oXWxubJA9nv8EZZ6/VzjxJpIAaR
         VgDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lVYKINPg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uJ89Pw9blJaciLvazOslSY6CfbBW2UjbJnPLm3IH9wY=;
        b=LLOXzZc2+yJ4FqWaWtbvPf6aeFXRBQlShEWXyfmSFGUDc/sMmYP05QPkNAyimjo7ae
         hj2FXaVsmHcd5PcjJxpyrqOwGoae7Dza+y6SaJvCCxUBaXeoSsr/022SjKcsiG4C5pc2
         rbV8ntDef3jIcLvjCBqw8NfanUMgvzMJGT71iv16JIIFgE47nKMx6Igf84fuKvvfLw7f
         lVhQz6+H+pYWatXS6V/fF8hwjC78ZvfRlVvcb9J9EflUTpZIG92pQ56jDxZvMmaS+r3Q
         irPgGvjGbOQTTUgOnmnvwH5h5y4oT+u1g83365aW1HQSqywUQVkhEJflpRQoIpRPFs91
         TNbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uJ89Pw9blJaciLvazOslSY6CfbBW2UjbJnPLm3IH9wY=;
        b=C62fFQr/D+Z7nPpZ/PObWw/7IC7xQeJq/hn0LSpGD0+P4ztUf8E6KkCXCur8DAKwhZ
         ujyB7oCmKAsGv1IXTMYnofcXzg4YvuUsNEQd4iv//fL52kOogq7ZKWphxu8gIssdjDCE
         yk56XpbJzLFDg4fPhNtAe8aP/MjyT0jOZ18GIh4NCmuiP1rAtg9oY/XvLtjgmJgf01w3
         Z3Ez5lm2Aq3u3l0C9f4eBSmHnxyfKIexNewJmE271hxjfGiHQ0e1gNDuuPncmC5EDSTG
         hHHJrZ4ehg+O7x2+BIPrYdPKCcvpYyXDsussanemiC7CEnt2Dpn0Lnm5tuKFe4BTAuJJ
         mxgQ==
X-Gm-Message-State: AGi0PuZ8CzCNx9DqaGH2qhof44RjJcMsCfSG7V0TBy3woxJ7+axNamy9
	U2Ml4IptuoBBFQ/tH2d606k=
X-Google-Smtp-Source: APiQypIhus7dyu4l9NLytDU4oZY83768kcwFz+ukZyavnYzRDxcLevK8zKxdwhfm2xth5Ura3Dq9WQ==
X-Received: by 2002:a9d:4706:: with SMTP id a6mr2154391otf.344.1586197973563;
        Mon, 06 Apr 2020 11:32:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3985:: with SMTP id y5ls321556otb.7.gmail; Mon, 06 Apr
 2020 11:32:53 -0700 (PDT)
X-Received: by 2002:a05:6830:8d:: with SMTP id a13mr18811602oto.321.1586197973109;
        Mon, 06 Apr 2020 11:32:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586197973; cv=none;
        d=google.com; s=arc-20160816;
        b=M2kmIMvCqdKrr9vJPSp/1naYMDbatnO6d/Pz4KBf89RXVVdCXeB/2bDMpsDgCEBrqB
         z4zPCg0rOpAMVXDcJ/b4Q2Z+f4tKCcoec04TpICivigqSuGqcQYBccNszqSD7Im151/M
         zKkSkQyQqy4MBfyWrLJkrag8qx2ZkvRZucVHx0s7jrw6L5ZXqj3AbFCAjj84wbha3Pay
         F3eCbFpe3bGCFuTKF0c1Y8yagSXJmDf25jKcqaxRXwnWDBU/HMckgjbKL1VAEmGFYOST
         pTmGnWvzlBNcQEi06cTFX7SXRCshLune8rNChQrW4J6b8+pATk5sZIFmFNrjMd0wSKio
         4bpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=IaZZniu2nqj9iMIGbHp0TAPHR1uhJQf0LZ9KAZAQHU8=;
        b=IqZQ3wg7OCZASXTm6QubN/leWMIhqGke3aL8E9qflSPk/6m63mz5MscB3Ax3p77iW3
         o0nc3AxQcscYkBPgsVDEbLnAEQjI+/g/XRrOpVI1GQQv8zD3hEB6qqpg5sy4Lcjv9lV3
         I80Z5DIiie55Ckws4ZVcL38bj8i4JGYtH0C5Jve54aguHLtLlidyooVhWhW1OXINNaZr
         Dd74MMtvjEZh2wcCu+OEq2OeiHGkt5yC9px78JprqI366Ly+SPVa40CrDmGJh63wA9cQ
         jYqWM136frpJYEp5ccHOFVmIoG9h1Ur2AR2ZYM43rgKPCmzyzlcl2LTHzO7lFAZsXvw/
         KLAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lVYKINPg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id n5si36179otf.3.2020.04.06.11.32.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 11:32:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id f206so7978960pfa.10
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 11:32:53 -0700 (PDT)
X-Received: by 2002:aa7:919a:: with SMTP id x26mr772441pfa.39.1586197972082;
 Mon, 06 Apr 2020 11:32:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200403091300.14734-6-chris@chris-wilson.co.uk> <202004060637.bUOdDm7x%lkp@intel.com>
In-Reply-To: <202004060637.bUOdDm7x%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 6 Apr 2020 11:32:41 -0700
Message-ID: <CAKwvOd=6L9Y_YmVDvbj_KoU=Y6OiVrvtdkiSNOkYL3FA+LP6Xg@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH 06/10] dma-buf: Proxy fence, an unsignaled
 fence placeholder
To: kbuild test robot <lkp@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lVYKINPg;       spf=pass
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

On Sun, Apr 5, 2020 at 3:16 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Chris,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on drm-tip/drm-tip]
> [cannot apply to drm-intel/for-linux-next linus/master v5.6 next-20200405]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Chris-Wilson/drm-i915-selftests-Add-request-throughput-measurement-to-perf/20200404-174829
> base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
> config: x86_64-randconfig-d001-20200405 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project be84d2b5b7e9c98e93bf8565e3e178e43ea0ec0a)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/dma-buf/dma-fence-proxy.o: warning: objtool: __llvm_gcov_writeout()+0x1: call without frame pointer save/setup
> >> drivers/dma-buf/dma-fence-proxy.o: warning: objtool: __llvm_gcov_flush()+0x0: call without frame pointer save/setup
> >> drivers/dma-buf/dma-fence-proxy.o: warning: objtool: __llvm_gcov_init()+0x0: call without frame pointer save/setup

Sorry for the noise, this is a known pre-existing issue not caused by
this patch.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D6L9Y_YmVDvbj_KoU%3DY6OiVrvtdkiSNOkYL3FA%2BLP6Xg%40mail.gmail.com.
