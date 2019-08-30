Return-Path: <clang-built-linux+bncBDSIZNM7U4BRBYXFUHVQKGQEHRSBU5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33597A2BAE
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 02:50:43 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id w27sf1118327lfk.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 17:50:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567126242; cv=pass;
        d=google.com; s=arc-20160816;
        b=CD6Op2ZFuH/5BbJEV2XjtZq0vpaRuwtNABzvFu1f/9kCGerlWWbTCyVKGrgICMoaWc
         bhzuCcqQqRtnk3xEzvYOenvV1HfWgvqumXH2XPqpd0QopbCL/ipYMLznljVpeGmbNldn
         1Hnd9ymWBlRXSffEn7bHjAg2P6eoXGXaiDbeumeSJgjONUNNQEWrV290DROnVwBvFDCy
         ut+wdtmNeMZJx3/a3c7DEVr+xHCk8xm/tWpFc5yotZ0m4Q5++BwH+bEEW4FOrVgpzUyM
         E+BxqXCZ2DqzfVMxLuaHBF/y4+izaAAHt0xQomj+fAAoVWTmQ+TuxWkmOTT64iwbfLyk
         xDQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=wj5crwGINEZY8hwudlDkQwsXwrdhWgKUFLzJlrd8mEg=;
        b=ExuJXQc2g5zFGbUS3cn/pGXTXcOxeS3Y1ek6XiqKc6IHYz/kIqdemvD1hBOA/yt1nl
         isJQ6kW+rdxIFEx7j3tSFTvSKTWrmYFZXJwUXN6uJfagnRcIEg0EZK/f6wDfQUjKIQMU
         3rE153q6KbfI87HZdJF9uj1SRwdhKXJwhfjHdN9dpfGqZ/dqeBgwolqrobEyzpWZOi+T
         GQzvNXqL+pmEftkR4aSXewLobs303MYVAUpxKyUntqC77mcdyl6NImTqV2Kl0IXt/hdD
         lX5FvIFRyAnXZ6TN7Ja9URpFjsoI75kRZ+Z20YK+ncSkuuwvynxXhOMNmQ7o7q56EVgS
         XrpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=rnr4X0TQ;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wj5crwGINEZY8hwudlDkQwsXwrdhWgKUFLzJlrd8mEg=;
        b=d9qIaLYqFh25QssZXhg/Wj+p3GqsupfbQkszQQ9JSVnCuunmjZ7wkidj4ON+RLu87F
         2+gQ5eqXoDTtp/qabLxPu7D8ZfZrjCPgDH+jFAlSpC9rL8FO4AglPLHxJOJu5gbB6gYi
         2cAUjk9ujOytHxD7JHRX9/qKvBf95//Q0INCdzty+Q7ZJ661ZvGKFV9zDHxXkBeQf5sm
         IL/qN2sQ5yaf/jaB/lSdRJroRwzHfg9NIsmEK5p11/+XkdcyQvEtflodg3H7OpTnmukx
         xhgfo4rFgKTyUQfCnEsgq0XQyRUwql9kFvS3P9HQYA9lgzA9Z9lwCLidudRRGM3xFuEF
         1rIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wj5crwGINEZY8hwudlDkQwsXwrdhWgKUFLzJlrd8mEg=;
        b=bF5kMoSEH5BJlyWY8spXfUaKnUvoT6Mj63E74ZGB4K2dx6xgw5BYrbrS5WZVn7LHiU
         S6lbSc3bAVtMi1f+Lxyyy7+nN0xBzr4UWbzimLQCl04PKDQuxis1raXi2FYLK+kXmRUN
         N/VrNT9/w8tSzkroiPz/k9Zx0wVSED896Ds9nlpufz9Pg8HQ7n6I7StANw5VmGus26sO
         a5f6/1+qyeItpoxHrtA2i39lV+PNcm4w88eKer+GO7+dD7p4SP8wsils1SW4BUCizCNv
         l2CD50m7f3z40DEt/XxPBNe8zRRPPIXgzlHniSvb9AKLiDIUw1RTxCZePSgWwI1MVifs
         e1jA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUs+oGZcvegbJ9zHtXqjYabN3X2tnnj5T1AC+VkNHiwxYpiNxvy
	0Q63gNkzMSQ9UP4L6h1tdBQ=
X-Google-Smtp-Source: APXvYqzvQGNeqT79S9aGG7+x7vLTk4eRqDyhVmddst8RTuvLHm/osYUxZapa+sNznO343Sg7r4/C9w==
X-Received: by 2002:a2e:b174:: with SMTP id a20mr7142705ljm.108.1567126242832;
        Thu, 29 Aug 2019 17:50:42 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:7510:: with SMTP id y16ls406862lfe.3.gmail; Thu, 29 Aug
 2019 17:50:42 -0700 (PDT)
X-Received: by 2002:a19:beca:: with SMTP id o193mr8062065lff.137.1567126242432;
        Thu, 29 Aug 2019 17:50:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567126242; cv=none;
        d=google.com; s=arc-20160816;
        b=Q2juDsmGc576Dp9gZjTT2TJ7xJ6fpTVAX56/d9+Tq3am22vlNH5M7wbGelKEr7UbGj
         tiWMrZHtzCCmjltB299iPeEUx/ppxGxvrVxlFq4BshBWdsGukLQWVmE3Z3v/HrlliLAe
         Lu5wfSediID4LPdGnD26R8YjXHEoEaoJ11gXqayFN1jfAL2AzXh/Ssx0Qs3N2y2+7PHQ
         luycokYKJzY+wvEZxxu56vri9yfAnEBJk/Fss53WKHMW2OjQNzXN8GNwAi2OsapO7gVT
         iWUiLIKVTE7elpkIFbxaa7uwhMg7/dQHSKA1sC5NwgCSSELiq++69yRxX5dD+oT73FlN
         Zxgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=xMuXLxwuJeSWopT/f8dXFbI5jVuji3StpvlKwxHupj4=;
        b=TsGOXaZMhLPRS9Pz3a6NY8s2dPdn1HKce89QgQSyQO7KnvuAIQNvUnnHvr50mZibtB
         VGUZM4vJzgt1Pr1C22KqKupnoBMQrUGkYlxl2UPLAS6fV549xT0wuDhNI1FYCD9PInzz
         8OkfRF4D+dzp+NS4NqAadFbV2gILgLCRCXIJ2of5BXjjCnaDsEPiNtAmotyOmW8RRPLo
         Y0eeTb4X5arPdaxGiJMMKlHyZ5ISTHA4gG1zi3pJefAlu83qX2f218BBJppRv/JniSzs
         5E2f6OIRCEm4pcgn0nNzwmppooL8nVnV+A26bO2+8EtyctQ39fOr7KIXuKh0o3HnqRKf
         IDUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=rnr4X0TQ;
       spf=pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id c12si321847lji.0.2019.08.29.17.50.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 17:50:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ivan.khoronzhuk@linaro.org designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id x18so4846117ljh.1
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 17:50:42 -0700 (PDT)
X-Received: by 2002:a2e:9d9a:: with SMTP id c26mr7203774ljj.56.1567126241817;
        Thu, 29 Aug 2019 17:50:41 -0700 (PDT)
Received: from localhost.localdomain (168-200-94-178.pool.ukrtel.net. [178.94.200.168])
        by smtp.gmail.com with ESMTPSA id f19sm628149lfk.43.2019.08.29.17.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2019 17:50:41 -0700 (PDT)
From: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
To: linux@armlinux.org.uk,
	ast@kernel.org,
	daniel@iogearbox.net,
	yhs@fb.com,
	davem@davemloft.net,
	jakub.kicinski@netronome.com,
	hawk@kernel.org,
	john.fastabend@gmail.com
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Subject: [PATCH RFC bpf-next 00/10] improve/fix cross-compilation for bpf samples
Date: Fri, 30 Aug 2019 03:50:27 +0300
Message-Id: <20190830005037.24004-1-ivan.khoronzhuk@linaro.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ivan.khoronzhuk@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=rnr4X0TQ;       spf=pass
 (google.com: domain of ivan.khoronzhuk@linaro.org designates
 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=ivan.khoronzhuk@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Content-Type: text/plain; charset="UTF-8"
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

This series contains mainly fixes/improvements for cross-compilation
(also verified on native platform build), tested on arm, but intended
for any arch.

The several patches are related to llvm clang and should be out of this
series or even fixed in another way, and here just to get comments:
  arm: include: asm: swab: mask rev16 instruction for clang
  arm: include: asm: unified: mask .syntax unified for clang

Also, only for armv7, there is one more problem related to long and
void type sizes for 32 bits, while the BPF LLVM back end still
operates in 64 bit, but that's another story.

Smth related not only for cross-compilation and can have impact on other
archs and build environments, so might be good idea to verify it in order
to add appropriate changes, some warn options can be tuned, so comment.

Ivan Khoronzhuk (10):
  samples: bpf: Makefile: use --target from cross-compile
  samples: bpf: Makefile: remove target for native build
  libbpf: Makefile: add C/CXX/LDFLAGS to libbpf.so and test_libpf
    targets
  samples: bpf: use own EXTRA_CFLAGS for clang commands
  samples: bpf: Makefile: use vars from KBUILD_CFLAGS to handle linux
    headers
  samples: bpf: makefile: fix HDR_PROBE
  samples: bpf: add makefile.prog for separate CC build
  samples: bpf: Makefile: base progs build on Makefile.progs
  arm: include: asm: swab: mask rev16 instruction for clang
  arm: include: asm: unified: mask .syntax unified for clang

 arch/arm/include/asm/swab.h    |   3 +
 arch/arm/include/asm/unified.h |   6 +-
 samples/bpf/Makefile           | 177 +++++++++++++++++++--------------
 samples/bpf/Makefile.prog      |  77 ++++++++++++++
 samples/bpf/README.rst         |   7 ++
 tools/lib/bpf/Makefile         |  11 +-
 6 files changed, 205 insertions(+), 76 deletions(-)
 create mode 100644 samples/bpf/Makefile.prog

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190830005037.24004-1-ivan.khoronzhuk%40linaro.org.
