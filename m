Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKNE5T4QKGQE4UA3LVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id C17F5247B0D
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 01:26:34 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id ei10sf11706317pjb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 16:26:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597706793; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lbmt+Dlk0tcGyofbjtrvOHCjaUZRE91WL+2BzzKVKgH7xbrhAf4v+NONu+vh1SUxQz
         8suPgoaXQ1t//Hwez2wydL4FF0B5S1kP2bguObOmSSRPHfPIQ++WkfY0YtGiFDUNgQys
         Du+gMJWBv/HnGB53XO02Jo+GjxlomtInSfW0Oin+vv0JwufzArmt7bnB5lMgY+3H6QT3
         XQInuriUW3NWIhGoF+lHkr+H/zLgeKf+2CHuljTES5UMcgOdaNDkLS8+AUvS8Kv6zjua
         Pf6PAclfNslUFT603xOowZKuUh7N0Vxe4/3yKlkyZsOVOfrDf1GI63qG2fEo8pGS9/pk
         ZKvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=zYXezfh544KN9Ds+qVQf8PcApG5xh7aFxZoKWF3RwQY=;
        b=u5vvC+PiWIUljFqmkfV1ugbNjPKzvZ3yMQcmAVnymkh2e4F+J0ujxEtKzE083iWx03
         VKTqsqscC5GeQ6R59P+Sqb7oeQNkjeXEKiJHX7dAEh2WMP3WA0U5ZMm2NopM3O5mXTEX
         UVZPahJRL84Mh2YSpPeKvXTZZ9FQidcfNop0s6cdHjnb+EfCU9sjQyGc16V1Rq4jc0TY
         aMUonFZxLXFD8qzTLZ7SKjtBgvGLi+XCzJ3kIlklpklkI74fCGXt/zxWvzc3SCdB06DO
         utkEJ7msYsgn7RBFOHjRbVk5z0Uth4Pxtzcn+6qUAiJSKRSLMZgu4C3GZI8wurblbI3z
         imMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tmvRvWzS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=zYXezfh544KN9Ds+qVQf8PcApG5xh7aFxZoKWF3RwQY=;
        b=E9w9UqgIrAvS+vuwvzRBl5FaTzhhFbz9o1q7cai373fULdDMJMZr6lKpGv3aXSPoaz
         uacT1l0jdJAh+dmNF8xrWZkJxM53jH1TiSN+VS2FXvTU2WfDXQ8KibSEArVc2p6t3iB4
         SJSS4+Kw00Wca4Vaq7QGtKXN+MuVyYn3EN5fFpfk5YbCfvz2h75hHMFqlK5bSLuXld8I
         wCbk+mdKyz7QCq8XN1wcqC/12ZnjTvXlhxf4SGOy39WGOxxvZVJj1ItaAePnADk90drr
         XuhnP7N2+Amt4krpS3CrObrHaPWF/LMI2TR7nMHurCPl43k2UguiPUZKUk0Mw1lAjgdW
         +3Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zYXezfh544KN9Ds+qVQf8PcApG5xh7aFxZoKWF3RwQY=;
        b=HY+Muxle837vX5oijtP1Aql2nyxdpQUl2GAK+HhQkqYl5tsWzRnC3gcD8GOVOkIDVG
         DOWJuaNscWQkmmXiWtfWHUeLhTAUsqPwG/NN+GrMD7dUVlKGgt44i/oc3I9ih4a8jWwD
         iP8LzmKOjPNkzUYWw0bWdnHl4VEWidPok0YUyXpru76rZcf1wPiFRL2xuWhHu0J1Q7JU
         EkC3KO9egneyHfoVstFodjFJlwj47K+Oc7/7E0YbVnLDm48oloBoV13ot43AZR5o1M4N
         dgxVZOYTfU9nfH8acHVVDGpTyzbAFX6bkOTBuosXJTc2o0G3enRLc3kNgmEafBpi3fEy
         BJBQ==
X-Gm-Message-State: AOAM530ZRdlxw+Sg/QAOFWZoz8SyZXAn9gPNylTyUGtCqxZXV0ELqdxW
	MngbDhOInYk5fd+OJEjwM/k=
X-Google-Smtp-Source: ABdhPJx5xsB4vi4unpZi/3ram/kO/kUsyfPcwoVNW9GrXQ/inJ+NC9Pts6SzcuRQTptpJ8QwJTOaTQ==
X-Received: by 2002:a65:644f:: with SMTP id s15mr6253067pgv.310.1597706793259;
        Mon, 17 Aug 2020 16:26:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:309:: with SMTP id 9ls7410686pje.2.canary-gmail;
 Mon, 17 Aug 2020 16:26:32 -0700 (PDT)
X-Received: by 2002:a17:902:10f:: with SMTP id 15mr13517083plb.232.1597706792830;
        Mon, 17 Aug 2020 16:26:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597706792; cv=none;
        d=google.com; s=arc-20160816;
        b=RqHPh7dYlhZybTelQMeDRA/+WSNqcPld/UjcDBV3FCqIbCXNDp6/Ce/9oHVhFMgQUu
         44jJmylL8oHxbEgBfSdRWo1C0bC80wz3cRKoHiw7Ay6s/BpAruFINQkqPZGu5e7zxqNH
         RVrdKqYkjNccVCTaDoagwqd6aaSqZjWmKbWq7LAS9IDll2nV4/SrC/IkhKQ37mnWzcxJ
         KDR5erXw+Cwqjnf7Ul0ObqgoQcEUTjnCY+8QcFCxuJ3pyfM3bABZinHIi++4KLMbamWs
         6evo5yihP2NoVMbQXmeMufmNLs7//xiYu+U0eyomXzYbaE+jzB6A6V0PVcoXmog40L1n
         k23A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=/jpKJ8VSGAnyWOFNABfDwNQ0rxZB7giOHzF99VNe1J8=;
        b=rpA81c9z8OCHq34KAiKCeVvzjkRtKRnC6XW+YKBE3hIOs0QpK5o4anAmxeNeVERoFd
         TG/PeW1OuF87PctTqNSGYNtzH17fzD9+1kUI9xAhJbKN1RfZjsm1Gqqkp+7V9cliMLAo
         71DZ8NrSCl+sFoDiMawxffvyk2TO6bVA1Sth18zTYa3jzAlS6bVRkPOWmF42g/uKiW2x
         19FfiybxMYDUA+NQ913TrUopEg16GS4/chaFNr6eP5Kb1/E/oCaLUJxD/JJoADi0ttoa
         tHyFuvLayuL8zDKAyJ1AZug+YX+ou69mUmcHC3mLIN2+CoTnfn8iwiHRPO8eFZnxfFdC
         08fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tmvRvWzS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id bj6si266561plb.4.2020.08.17.16.26.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 16:26:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id g33so8852237pgb.4
        for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 16:26:32 -0700 (PDT)
X-Received: by 2002:a62:8303:: with SMTP id h3mr13196042pfe.169.1597706791860;
 Mon, 17 Aug 2020 16:26:31 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 17 Aug 2020 16:26:20 -0700
Message-ID: <CAKwvOd=+taiqCpyknLOm-+kVVWEj-PxX9t5rktj_tNBaQq4iTA@mail.gmail.com>
Subject: llvm mc - plumbers schedule live
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Will Deacon <will@kernel.org>, Geoffrey Thomas <geofft@ldpreload.com>, 
	John Baublitz <jbaublit@redhat.com>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Josh Triplett <josh@joshtriplett.org>, Greg KH <gregkh@linuxfoundation.org>, 
	Behan Webster <behanw@converseincode.com>, Bill Wendling <morbo@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Nathan Huckleberry <nhuck15@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Mathieu Acher <mathieu.acher@irisa.fr>, Dan Rue <dan.rue@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Mark Brown <broonie@kernel.org>, 
	Guillaume Tucker <guillaume.tucker@collabora.com>, Philip Li <philip.li@intel.com>, 
	Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tmvRvWzS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52d
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

https://linuxplumbersconf.org/event/7/timetable/?view=lpc

Starting at 7am PDT runs for four hours.  Just waiting on one more
abstract and it should be complete.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%2BtaiqCpyknLOm-%2BkVVWEj-PxX9t5rktj_tNBaQq4iTA%40mail.gmail.com.
