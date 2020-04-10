Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDHJYL2AKGQE6XQUUAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 044551A49A1
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 20:01:52 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id x56sf2450236qtc.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Apr 2020 11:01:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586541710; cv=pass;
        d=google.com; s=arc-20160816;
        b=wYSgMsM6MURIw6CHXmXbnmI3Bxl1t3HyhksyUcAf4pEusNclkbLS+IosWaPjd45B7h
         u8yStdQZ2NTzWEs1CEl1Lqnkq2koKXbtnDOWhft/O9ZX4lyuHPA1tn8oKgjKFVisd2+X
         Oup/1Zqn17I+sqCjBJpU07W8nehw7SUj5kLFGAURQdRAO42o8P48tQtpFQjytyymgjwz
         0SRWREhv2WkXNA+CbBchzjRONjSvBgSUtVXFK8aD1iLwzD4IQE/11yjrGRU2yJoRA53g
         YJb+gLomwCUAZDTgy36W0kmL2suf/wRB+6Y1NWdtsd70MG2MNkaQBkkN46xF/0JW0j5a
         65XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Yq05aHJ5BYx5Sz9/UH5tS6nn1H7Uwe69ZwRXPDPYUjQ=;
        b=FaNQlNZnt6OIT3A3nH9nofbz3EdSpKU9llSI/Zpp7LVPcSQeorkZv3SeNTNPLf+kiH
         RjAJ3RJqx2xPocSOzKYjsEyhLV+Ls1L2SZPxEkBYhMe+fTwLkRHZ9bRS5dc55XoFAdVi
         mNPapFo6Il8F6Bsjs4jwHb/BV1F2LEjwlHu+qWKRrqG/jdUL+vBKDN2d5tAZLD2SbFUl
         33KNTqCSY4GEMrvwXgMEuqgssfnemOU7kjJUxV4yEcxRjhJGC6mAhEcYfoZpcb+Jlc5h
         TSQtUzPj17BsIYqfQEbFEdz6MlthK8xg9WXl5DZpZfWSxGOf4MpnglTkYXl2Au+sWV1T
         cCYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ISflhf8U;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yq05aHJ5BYx5Sz9/UH5tS6nn1H7Uwe69ZwRXPDPYUjQ=;
        b=ZpN0ZVkv+tjw07YpQX2xcJhA56zF5hOzX2u0PSoxU+2kzgLPaH+TCTYxStbAt8qdCk
         znHT4td8U9N4lSwKVxsx0TdRhHlccPh2UYCuOGqVyPeVsvEXvNMR+SmfwfvN89AlZXnI
         /e33hgKFLyeV6luZC2yZQZKck/QRjQlC1IfAebu9zOXKOoOP/kV+O2XwitiVj4qxOxcb
         9BBLgnWJgEeUkaEgsng2IJeoM4AW9mUSKIpwFRadY4rS7lB4eU32Wd7fyu3oWOV8UDlh
         U+wc02aAr6chvv8pXtGZWJ835onPrypbkLrVj1GzTJ30AB1NSZgc2LI59APmweX5JeeU
         YWyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Yq05aHJ5BYx5Sz9/UH5tS6nn1H7Uwe69ZwRXPDPYUjQ=;
        b=SzEeDwyBMVyvaxctmfPgMGtnbWpBoiE///mxwZHHw8AmDoNfGb3CoUYzXPXJf3WfV7
         lOO+cQfMDzy4fQ21LJ11U6zpoKKSvEF4cq//Td31zoL+0159Mwh1yi5o01Jhv1EszfRm
         /EMysMs05ONw7vCrFfsSez+HcGRlUjSZDkZ6xv/S6zTfqjVJ8Kk4OxkmyzQ1ynPwX33T
         FAiw+iikuC+8Uvcw8De24zRRVZxerinn+vqjWveY4JjJbYxFRhi4LabqA2SlqJLRg8bp
         //lbuYBe4enGh8yTYs3c9+o+PIA2vUk98vC30hOGlQN9BWyW4FM9IBVW9QHDQ0JcJTxL
         Am4A==
X-Gm-Message-State: AGi0PuZVCVDl7AMzSOznLzg7M4R8wFT2u+TSjIQ172PNIhl2+QXFEmC9
	gZX0qSuC0w/kIGTAzYYswHk=
X-Google-Smtp-Source: APiQypKz37pv8ULAvyTZ30i05kJRR0y1FCYAVRNBK1ewx3k+GMjLwWSekKBdFBhSEgiRVIJGWaZUPw==
X-Received: by 2002:a05:6214:bcf:: with SMTP id ff15mr6298179qvb.29.1586541708477;
        Fri, 10 Apr 2020 11:01:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:5084:: with SMTP id e126ls9062094qkb.7.gmail; Fri, 10
 Apr 2020 11:01:48 -0700 (PDT)
X-Received: by 2002:a05:620a:1250:: with SMTP id a16mr5369181qkl.497.1586541708038;
        Fri, 10 Apr 2020 11:01:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586541708; cv=none;
        d=google.com; s=arc-20160816;
        b=g1VcYg/bx1r7D/olGGZavSb/JDoAQ9eFxuhCAur6CHTS6naF/5r4ueWFUH1mdMWxya
         HphOwWYuEaB9V1XMGerEwRRMG3kjVZVoPSnCVe7yoGUw1Z22tobyxjIoLWB1bj2h5CLo
         7L1tQ7pNETkj+ErXWBy/eGv+tPBMzb83icrNCHm/wG+TXDgFfuTcR/OI27DqTNbSOjb9
         4ulSo7mz8NGPq48p3T8hdJtPnhNRvgZRplYWq5K0F6yeYGjGWmRe5hg4frc8u6xokh9g
         8hvz8lObeC6YFfm4ZiRHs1qNttMBRscPeXb18BEp2XVHiwDJIi8/MzjKJSKzW4GUbbpU
         Towg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/FoyRf5jcR4tbPQ3U0lbf7obwhEZy0r1ujXWzklozSs=;
        b=lKB4iCKNgx7fGx+D1cZXz24vK/eN7X5iIAzkoXNOrbXOmW63lT7X0EaWnrX1m4PmwX
         LzqAvZT5jc1qY//UZGHsbo/fL44hXgAoK0oM7GEIhsrbvGwRsrSGre0G+U/eM5PlgWs3
         WF4y4wcx+3rKF2hE9XCRjQ1ANz8opdrXe4gcXZzR+EgYpe/E88cpf1VIh1awRQznED8g
         wXwME6osgZLt9DCHwNxp7yx7PHqClRiLH+zSFtJZzzlwV4zCEaO4gh8xHz3IPMFL80Vr
         KErkAkKlLTsNbrY9L2lbowWJ5xsJBBILR5rosWAYzRH55DkiL3OEkNJIcxvgZL2ORUxQ
         WGGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ISflhf8U;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id x11si148367qka.4.2020.04.10.11.01.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2020 11:01:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id a13so1340253pfa.2
        for <clang-built-linux@googlegroups.com>; Fri, 10 Apr 2020 11:01:47 -0700 (PDT)
X-Received: by 2002:a63:a34d:: with SMTP id v13mr5511529pgn.10.1586541706812;
 Fri, 10 Apr 2020 11:01:46 -0700 (PDT)
MIME-Version: 1.0
References: <202004110117.qU30Wf5W%lkp@intel.com>
In-Reply-To: <202004110117.qU30Wf5W%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 10 Apr 2020 11:01:35 -0700
Message-ID: <CAKwvOdnPiVveo3esJyN9N=XN0BfT9C2FT1afuoj9ntMET9iYgQ@mail.gmail.com>
Subject: Re: [android-goldfish:b120914098 7/18] drivers/firmware/efi/runtime-wrappers.o:
 warning: objtool: virt_efi_query_variable_info()+0x124: undefined stack state
To: Philip Li <philip.li@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ISflhf8U;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435
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

On Fri, Apr 10, 2020 at 10:48 AM kbuild test robot <lkp@intel.com> wrote:
>
> TO: Alistair Delva <adelva@google.com>
>
> tree:   https://android.googlesource.com/kernel/goldfish b120914098
> head:   3852ef1983e37088e8ef7f21c80bfbbb8287e493
> commit: c093b585dac3962f3a54772bc8ef2031bd1f1990 [7/18] BACKPORT: kcov: test compiler capability in Kconfig and correct dependency
> config: x86_64-randconfig-c002-20200410 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project c6eb584c64872fbb779df14acd31c1f3947f6e52)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout c093b585dac3962f3a54772bc8ef2031bd1f1990
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/firmware/efi/runtime-wrappers.o: warning: objtool: virt_efi_query_variable_info()+0x124: undefined stack state
> >> drivers/firmware/efi/runtime-wrappers.o: warning: objtool: virt_efi_query_variable_info_nonblocking()+0x124: undefined stack state
> >> drivers/firmware/efi/runtime-wrappers.o: warning: objtool: virt_efi_query_capsule_caps()+0x125: undefined stack state

Philip,
Thanks for implementing the filtering for objtool warnings.  Looks
like it's working.


Filed:
https://github.com/ClangBuiltLinux/linux/issues/985
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnPiVveo3esJyN9N%3DXN0BfT9C2FT1afuoj9ntMET9iYgQ%40mail.gmail.com.
