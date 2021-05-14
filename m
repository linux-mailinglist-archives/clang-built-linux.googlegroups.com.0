Return-Path: <clang-built-linux+bncBCT6537ZTEKRBKP37KCAMGQESG6YVOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6AB380F73
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 20:12:57 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id 7-20020adf95070000b02901104ad3ef04sf45380wrs.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 11:12:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621015977; cv=pass;
        d=google.com; s=arc-20160816;
        b=z3mCIIWK3YrW9FZaeAPpGicE9E6S2+vgtHUS+ndkRJzSx41g5ET6ozg77gUXkQapPc
         g1Q9RMAebl9ooqgDdsnFbrK0h2wbxrXTGNCvSYF/V22/nZC74uImnsDr8DkFJujRThUs
         +UDSR3NJf6WY5G01ASzAjTGjkG0bxNvN/6O9Y3s9AinwwdPNoNPFT8YCqk8aInbuarGS
         Efnm/1OUPnpTWu4hd74wqxanmpWzo+dSS1paCLjmCVjv5xML6lIblJSHkJJbUbUBy9fG
         ME7AeM+sHi1ZKwlsmQ3o4YtSdPkZMgZcGxBJLjdHUI3NeEtIEPtJdSt6Hzko4JZwln/c
         5hgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=0PHVXD9QLlDsdS3L3DuUH+fA49IZtp9DSOCotYSZ82I=;
        b=Xrev1tjPpvXSU2ZQ0F/Fxfci9kdyjw+RsGWzaUUajMCbdDec+w5IZ2ziGG9z6RoXrq
         gSerOcpP0W7aVzW8nCxH3OiliSHHs6l86S61cyduxqpdprLiEIFAV2CKClllr7aV6fRH
         xTJ09bbz09DIwHtpHdWu73zV0xUurm8SSX3S6bwA+iuwTWR13RjqN2F2e9Og5VQMtagO
         ijtAzo1+9vEO0B3jkVL7UIddNCBy8NRmuBN6NPJp52APWMZdr7r9ZhN7hI+Z6UYDcpUj
         O/WnHVQObFg/pEPvjsmnTs6vFRkptDgsiug3Mlm0vJY/1dXkdkZHYGULrkVNI5u3sNjN
         lbnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="rFDT/hz7";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0PHVXD9QLlDsdS3L3DuUH+fA49IZtp9DSOCotYSZ82I=;
        b=DoOFrI8wx05mGV/8z/DOODkrHbxxvQDANgdyQT1mFF+WSTcxESQ5SJSDWYAOadsJEA
         YASb5XQ2MmVWji5XREABwp3JSyhbC+RiJYVoWad0zbSuzXPzI2WTHazthXHDyEjUmzv7
         HSBVWXUlnOdL9BMoiMqARGpKQ6jwhIO7sJWE4rStEe6OzikfI2qTwUCAYf7CTXdDLA6h
         /48JibiSKY89GFk2tTSXyufb3UKivAgbA3M6ynzYfkRFq9iDuwxRf+Iht0IKsWFeONnN
         WoZCEzTTy9XuClCqwuWG5XCDyRIsK+RTS3aotsRk5T48VVMYon+6dmI3YGGGZ0xe5SSr
         QrbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0PHVXD9QLlDsdS3L3DuUH+fA49IZtp9DSOCotYSZ82I=;
        b=UFw7Bb/Qyf8ukIW2ZVbEuqV1/5c1dDgK2W1VmUxl1gJPe/rqJ7Bg+U3kXcFwzxjPdf
         LlpyP+WlOwkTb9Nj+f4RCFmcfXU2y6J61O7It+inzu90sj4M6dpx2hzqPCt7xiHolbLj
         7Ih507HZgXbRSMcxrHkx+12dL5OwYHJlySQilat4isTO3pQOGFM1JX55O20yhcnqVAn+
         uH1GSc5Ux97JtdNr9Is++mdVpnPhaK5GKS7TWRAUEJf2lPV2ksQpPZc5cxP+4TgaRk+1
         1YgtqerFRCyJUz0HsWlBBoWhyb8Nzh2hB3WxNNhpjNg5i+D2WevViBWpLolcJumfhuIk
         7y4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533WLp2LU3fOf9E1r2Yhi/cNVCqWdi6IuhC5B2IgMPJxIyEwlePi
	PPjO9+ByrKS048ZjHVi7fzo=
X-Google-Smtp-Source: ABdhPJzwTEZNPBHe9eqza+2GBYkJK7IdMOe7PnwZR67KS6OYgoHlQzYu+AKC+XGGHRR7d72KrHN+WA==
X-Received: by 2002:a5d:654f:: with SMTP id z15mr192558wrv.64.1621015977439;
        Fri, 14 May 2021 11:12:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:198b:: with SMTP id t11ls6261049wmq.0.canary-gmail;
 Fri, 14 May 2021 11:12:56 -0700 (PDT)
X-Received: by 2002:a1c:7205:: with SMTP id n5mr10860681wmc.131.1621015976581;
        Fri, 14 May 2021 11:12:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621015976; cv=none;
        d=google.com; s=arc-20160816;
        b=rSy28ygDf2hKKZ4hg2eArWYRaRmctrbn96t4UdnMF2N9/kMpmxxQZdOdlnMbx+Xbmq
         qnhUNHwPtpbHjcS/6nIBB1S4FPFNUljXUBxb2pI2d0+iOS6RAkL7OvvfiJLNQ8O1MlHb
         iLbqv6CK3N8MmcXsOnXzNYi94H0q/9SWlGjQ8k7bFfOg4REznq+E2OmUowpbu8oDe470
         AlxKw1LCBzkPr2WSd+vi2p+uQpiH3zwa4eMCSjtZyjZQBKpM2LMOuH48+Ro6ZjDYtT3y
         NG/UShu1HgUcN+A+CGaYXtxPqLueZf77zKyUNnuJovbrxGVO7u9ZFz5UCzWtj2Enm7uz
         hFsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=nktD1feno+Anf1frG3kC+TyrHIcTOfivN6tBXZ2+MFU=;
        b=X69cNWczDy5RvpEi/zoSgCOXd0ISZb2w436WeevzJQcc1+PtHgVBuhJznDjamZgxwa
         X9gmJyItMGAtIKoxz/seeBNMI35k6OzWK7izZ5a/cOyPyGVN5jGxaY0gAvmPGByhYdUC
         w92D430lrJoGpeYGm5Vqt9i5V35hB6kGEPS5NGiaFyEMIT5kilEECG7fq5/iKBT1P9YU
         EMev0/tpqaB4lLuhs4gT2SmYVoMGVmVSYOUIkF841wzy5dD4nWdB5fmtlpnNL+djLXKh
         VBpK9Gi9I3RIjsT46uOWJwrHjtA6PI7pLzqdhlBpVgUp7XXBhuKKcwV8vlMR8LpLet6H
         spYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="rFDT/hz7";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com. [2a00:1450:4864:20::636])
        by gmr-mx.google.com with ESMTPS id k4si481292wmr.2.2021.05.14.11.12.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 11:12:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::636 as permitted sender) client-ip=2a00:1450:4864:20::636;
Received: by mail-ej1-x636.google.com with SMTP id b25so52eju.5
        for <clang-built-linux@googlegroups.com>; Fri, 14 May 2021 11:12:56 -0700 (PDT)
X-Received: by 2002:a17:906:4e59:: with SMTP id g25mr11833087ejw.133.1621015975277;
 Fri, 14 May 2021 11:12:55 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Fri, 14 May 2021 23:42:44 +0530
Message-ID: <CA+G9fYvYxqVhUTkertjZjcrUq8LWPnO7qC==Wum3gYCwWF9D6Q@mail.gmail.com>
Subject: [next] x86_64 defconfig failed with clang-10
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Next Mailing List <linux-next@vger.kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	lkft-triage@lists.linaro.org, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="rFDT/hz7";       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::636 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

My two cents,
We know clang-10 support is stopped, but our build system is still running
these builds with clang-10. one of those observations is,

The LKFT build failures were noticed while building x86_64 and i386 with
clang-10 on linux next-20210514 tag.

  - x86_64 (defconfig) with clang-10 - FAIL
  - i386 (defconfig) with clang-10 - FAIL
  - x86_64 (defconfig) with clang-11 - PASS
  - i386 (defconfig) with clang-11 - PASS
  - x86_64 (defconfig) with clang-12 - PASS
  - i386 (defconfig) with clang-12 - PASS

Build log:
----------
make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/current ARCH=x86_64
CROSS_COMPILE=x86_64-linux-gnu- 'HOSTCC=sccache clang' 'CC=sccache
clang'

drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
eb_relocate_parse_slow()+0x427: stack state mismatch: cfa1=4+120
cfa2=-1+0
drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:
eb_copy_relocations()+0x1d5: stack state mismatch: cfa1=4+104
cfa2=-1+0
x86_64-linux-gnu-ld: arch/x86/kernel/kprobes/opt.o: in function
`arch_prepare_optimized_kprobe':
opt.c:(.text+0x798): undefined reference to `__compiletime_assert_251'
make[1]: *** [/builds/linux/Makefile:1272: vmlinux] Error 1


ref:
https://builds.tuxbuild.com/1sW0ag5finSjVuErrrzeunjj1nx/

--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYvYxqVhUTkertjZjcrUq8LWPnO7qC%3D%3DWum3gYCwWF9D6Q%40mail.gmail.com.
