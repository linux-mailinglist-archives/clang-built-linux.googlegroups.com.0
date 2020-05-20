Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBI44SL3AKGQEFP5LYTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 63BF51DA791
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 May 2020 03:55:48 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id p15sf2185721qkk.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 May 2020 18:55:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589939747; cv=pass;
        d=google.com; s=arc-20160816;
        b=l9XE85grrJS9f2vKNpUFTX69iwOTKGL1AST79UXKih1wYwoLADiBRJpxkZOlhXMUyz
         mXp6MmcumQylurl8biMxWC6P1nNR5bvttGOfkU4upM1yPA4RsylkTww3sP1DYYA2qmf/
         gdQm59NvHNJxgzWwOqsAlLL7dBFaxC33WeCTDX9fPE9eorn06n0VokN4Qn3fCQpr5O4C
         ti+lDBR1gzeqKTIyJSmoJnbWi48w/O1BYbhrTrZ+lkMJcZsJCEy3GdIVEwU6xwYFIGMy
         0F1CNYBfOn4TDLyAEhaw8z7LS5gtIo7mxpKWr8viJ/Qzxco0f1qoWkj/FOl4zsxzKn7I
         1xDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:in-reply-to:cc:references
         :message-id:date:subject:mime-version:from:sender:dkim-signature;
        bh=ypfcBa7DbiMviuv06u7AOlTXOq63hd9I0JyVyfUMPcg=;
        b=MuVaRz72FRIefRinoHyFIusF6XhmOF3ueEep/MZzjXMyGP8LabsywCLXmAEvxnDTUw
         gUo8AinCXFlxZdfH8bzyYIihO4Os0yqBElnyZZtmUgBPF3IuCPAGuZSvnfSbmCop96RL
         EO9x3MdzhA8XlXZpnN3o16dGHPz4FV0QUZsuUjnRsY82C+QzymDxx/6VEY6FFmOc0S15
         dN+S9AZYfsnJRf77WWKqNcYG8GPZTXfS4cw6QL5L7MYnXxJugr9k6/sI1LCBtVg4XH2h
         DSoLW6lqN6j3mYQpsjjqNAuOgKpXF1hnqj8fAUe2UTYlSUtLCWhhHEjkGjiyxv/IG4+h
         UxGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=ZOSedoTX;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::f2c as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:mime-version:subject:date:message-id:references:cc
         :in-reply-to:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ypfcBa7DbiMviuv06u7AOlTXOq63hd9I0JyVyfUMPcg=;
        b=G0b6KcJr4Ahpc/phXPLhFaydFqBlCpE6bZLKC9M+DUtFlvad3A9XXgP3UMEHQ3pwTb
         Y9Pc2nl+N4EwA8zMd6hlYTeFNRhr3h/Wa6Y4i68bW2Vx7GBfzz6ihgjLbKZ/ZyhhMsJ4
         lmcSX3ssFMzg06cAf7f4pStjoJY1LToxXsi5o5wUDcrs92iJa8sBKcZmyzeZErtKmZml
         29PeqZd8CdyhYa7XKBM9VZupsjkzbNmdpljl5Queg1EueT/YjrIrfzwWx450WHnbPSi5
         UqKeRTNk07nj5G7nBm1t2dHGZgz3Tq72ljWzksufSQuRdSyiLRxRqtXLtygqMC9rcvtY
         DWUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ypfcBa7DbiMviuv06u7AOlTXOq63hd9I0JyVyfUMPcg=;
        b=iqJ0EjKk7S2aJwW7qhcNq4Gd5Qc9HVnh7RstNdaxQ7KeIEAnBPhKi1TMMXB/BQIlwP
         1yE/5+wUrIDb46NYa+9xSeWZdxHtxt/uCPq7mJ2JnCj9P12YqsT/esLeCRwkMDGflZxS
         sj4q5MvPDW9w62AkyuaNFPcDuSNpJLKAYTMeHOwqAtaYALW6Sevs1hylkoheLPnYorje
         5NpGdnhEsqqcOeDIkzTjvQC1tl/kraA+1ADULvNunpnl1QJf1TNUcJfJtWLYNJX1vLpG
         icvp+FJLPT6d5VeoyT/i4KB8N4HUv52T57rFfCuWWnTDauscxKoCYQP93GdeKGWRxsaK
         KMZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313G5+mbJtQRgFWenVTGP2PhSgKynL0khVL+zFP63nDV6WQnyOm
	OkhWr1h6TJ5WVfmvYK2nILs=
X-Google-Smtp-Source: ABdhPJyg4ViQHc6AMJO6cQ2mEP/0CyiWHK5BfCrfeLGnV3AkMKfD1usAnJHAg33tG35xhfOfuyw9sw==
X-Received: by 2002:a0c:ed4b:: with SMTP id v11mr2664362qvq.179.1589939747124;
        Tue, 19 May 2020 18:55:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:2d62:: with SMTP id h89ls765924qtd.0.gmail; Tue, 19 May
 2020 18:55:46 -0700 (PDT)
X-Received: by 2002:ac8:7b43:: with SMTP id m3mr3017739qtu.298.1589939746823;
        Tue, 19 May 2020 18:55:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589939746; cv=none;
        d=google.com; s=arc-20160816;
        b=vc0HykW7l7pEkdja8xq31s4Q2T6aPM1gtg4s51s2grx9PYYsCPMca06/qbaHbWblWb
         4n8OyGVv79+pI/S0CPE2x5IXtOOlE+UTgDz3i/frZKPJg4zt4tF7w0mbOGkbge5CbSCC
         vi/dI/UMmp+f7Q6LZqjZ2O8ekkvsjJr4Jyk5qMeHtUuFevUSMlS3f/MNIuz0w4Gohnop
         z+9J6ufz/QntVWcc9VBPCBtbW8vqNtYHuX5wemd+7Ti76xXzSSANUW5FKaxg9PETWe93
         86VB74UfWnLGz8hVXw4M7e4dGL0RXyHyHWo6muDM2XDaPJDR0JtOlhW0QlvO0KYq6IBz
         wAwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:dkim-signature;
        bh=ghTZqejRfgfS5fU2jVg75uMDbgGX4TrDcdfAaAdauPM=;
        b=IhCvsICjSY5Twckb5RiBZPPKgfCsFUEo/TTTnDwp6ypq584gKZ8LpA2W2bIppSh22r
         uguflIWHD0iBH9kwBYkeDIKlfPLlWHBwbcCIGNfYgxBCdT9WKOL5Y+zlhMh0jjkmF3+Q
         8cupUwu5mQ0nL5lLJeZ9h6rQPEXSImomFWdb+Pf0KZjmW0R+C2vOQ8wTJENcE29SbvNq
         26WpCGwgxOtEEtaYroT890OCFtujCE+SSlIBYHTE/tUNwVOeLyGQP/EJdB7dZGOoqqcg
         JbjZQh4VCh5RRM6dU+xgPuVj0IWUJCH33iPTDVngvbgyIJLHbfqZQfuInLnnxj/tIZLR
         vp4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=ZOSedoTX;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::f2c as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com. [2607:f8b0:4864:20::f2c])
        by gmr-mx.google.com with ESMTPS id g126si91185qkb.0.2020.05.19.18.55.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 18:55:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::f2c as permitted sender) client-ip=2607:f8b0:4864:20::f2c;
Received: by mail-qv1-xf2c.google.com with SMTP id fb16so639712qvb.5
        for <clang-built-linux@googlegroups.com>; Tue, 19 May 2020 18:55:46 -0700 (PDT)
X-Received: by 2002:ad4:466f:: with SMTP id z15mr2750441qvv.101.1589939746442;
        Tue, 19 May 2020 18:55:46 -0700 (PDT)
Received: from [192.168.1.183] (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id j3sm1007064qkf.9.2020.05.19.18.55.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 May 2020 18:55:45 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
From: Qian Cai <cai@lca.pw>
Mime-Version: 1.0 (1.0)
Subject: Re: UBSAN: array-index-out-of-bounds in kernel/bpf/arraymap.c:177
Date: Tue, 19 May 2020 21:55:45 -0400
Message-Id: <FE7742FF-713E-4310-95E7-9B217662E53E@lca.pw>
References: <CAEf4BzZKCh7+2TL8GVetxrOKYCoL0U7jTGsO5CbDExs7Px+bYQ@mail.gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 Andrii Nakryiko <andriin@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>,
 Linux Netdev List <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kees Cook <keescook@chromium.org>
In-Reply-To: <CAEf4BzZKCh7+2TL8GVetxrOKYCoL0U7jTGsO5CbDExs7Px+bYQ@mail.gmail.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
X-Mailer: iPhone Mail (17E262)
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=ZOSedoTX;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::f2c as
 permitted sender) smtp.mailfrom=cai@lca.pw
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



> On May 19, 2020, at 7:23 PM, Andrii Nakryiko <andrii.nakryiko@gmail.com> wrote:
> 
> I agree, it's bad to have this noise. But again, there is nothing
> wrong with the way it's used in BPF code base. We'd gladly use
> flexible array, if we could. But given we can't, I'd say the proper
> solution (in order of my preference) would be:
> 
>  - don't trigger false error, if zero-sized array is the member of union;
>  - or have some sort of annotation at field declaration site (not a
> field access site).
> 
> Is that possible?

I am not a compiler expert, but with my experience with all those compiler instrumental technology like KCSAN, KASAN and UBSAN, it seems both options you prop need to modify compilers, i.e., -fsanitize=undefined

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/FE7742FF-713E-4310-95E7-9B217662E53E%40lca.pw.
