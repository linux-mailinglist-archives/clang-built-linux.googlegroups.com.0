Return-Path: <clang-built-linux+bncBDTIDSUUSAPRB3GA7OEQMGQE65XMVEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id D16CF4083C6
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 07:23:57 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id d4-20020a923604000000b0022a2b065b0asf14751446ila.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Sep 2021 22:23:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631510636; cv=pass;
        d=google.com; s=arc-20160816;
        b=fBk/qWL+O8l1VH20C6APU1mE5atcrX2vW+vcM677IyTCebK9VIFo/BD1ahVL7RDGOK
         kRwmwnE1ZwZqYGzIrvZWJfzbZpiknQlB7/8WdITWfeA//JNJvuNAqSLPBl+JpZtZI79A
         pAaWXiVGHmXz/R5lqvAR0ybivyrLJY9dx5W3JTlI7DI35etCtO8vrMyfGApwM0QTEfH0
         WRrJHioK1W7M7B5givbhX+2y0CkhhNztGrhdoJoIllyhlqbXMY4kMAntQLWCEQK5ooBe
         q+ttHZ38zoqN1/WXy/fZ+BrgS07jKkMj8kwxLY1JPppekcvTjuBf+1/1GLY4Jfeby6On
         28Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=wGtyi1hxODqvFzT5qJ6nENiDTyEwj6/Y4thngvTbc7o=;
        b=JhCLpXx4in/KqkMmn4UshwZTWEI8EcXdwVj9oJdpUYhbDWqYXSBLbQS4wRtosQlRI0
         fq4vCGRHvR3gaouxNCUBfbFiw/vmbasvtTGWw/bT4/7bLg1u7f2y168uVQoBI0j3emKf
         e/QPH/IunPzLlWKk0y1Hzvc7Gov4YDALVxnj66MeFCHHDce99flvW3KBocxZoHjT8+Gy
         IHUIxePSUEAXfVMiNgk19tiVbQw3PB/P7a7XBtY4T1kEXe8V07DKx/niVoo5AM0K7k96
         KW+FZA4LwkmGBkiYCWWIeKqRDP9bmXQX8TKyDyW4nTX5vZVWsLT5cFGD/bqFBHI+vRK7
         iWxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Jjp7auxd;
       spf=pass (google.com: domain of xinchao.zhao.kernelz@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=xinchao.zhao.kernelz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wGtyi1hxODqvFzT5qJ6nENiDTyEwj6/Y4thngvTbc7o=;
        b=BdmYu5LnODI8tvoTlUmhmeShGAOBU34uuVR0Ym9bzNC07Bw3/P6dHNforsMVtP2Ek2
         irGHnfkslemLVqJ8UUHBdlhTYZU/BT+RH9GDP+yDyYWrdl4GEuebMnHVvMjQHKT36gLx
         DXFzngbBLplmlEjkYVdRpOa6yxBzaohWZ3+81w2mzihmXDWNIsjSlgQ/hZkkEua4Hb9k
         F8s1dN2XbSBPV2fhcopj9GadU0+zxcLb6O3AGMDe39P+W3U2Bx95xa3KYKd6c6uzLM4b
         S/+dZbXlSAXuBcg04Y+NM7K/qX1nlX/nnIfGmq0RHPmJ8xkPW1JD/xZQOFOKVi456QUD
         7e/A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wGtyi1hxODqvFzT5qJ6nENiDTyEwj6/Y4thngvTbc7o=;
        b=CA0ZGL+K/AT1iMblhAMZsKIC8Lmteyr2/5HMCcly2VIjIHJMlT28KgwLeh32+M9hxl
         hYzb+PzIFEtm9T1Mh1oA4h+FQilwDGD4nnkONkDRb46s2At4lZjFeZsAlY7nA3dVMnQG
         AIj538paA+aCiCzIsbsU5m9G9xxzqeEBltVV+lpxxXa4T/Pj4iN8aZAbo8xEsskChA+e
         gKRfrY6ON2E0QclgS8Exepp7bonpZtuzTgn4iKrU6GS0C2ysds1v6xRe9uYpcEjcRjGm
         GFqC85Dgp2GGegNW2bTbZeCETok60UCqfkhh9hWu4wooumqQxxLfvB9Ur9UGBjrZcTJE
         6iXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wGtyi1hxODqvFzT5qJ6nENiDTyEwj6/Y4thngvTbc7o=;
        b=KWFt4nogwtUvPCxCewP2zQGLTosIlA5fJ+rKLI7lAG/HF+UL2ubBtoaaj1Eki8BGte
         2vAXBVYO6+1Y1zwgXp67+9Mffqp3Gp4zDaNuztL7xTs2WVhiug1k6dUnsEDmznInzZf9
         Y2pOhVJN2wi/xF2BV8QGDwg3Quqzug8uAB8aJXY/iol9tXn5I0GwxqR6U9JvLGc3tfvz
         2Dt4u4OhqnV5vCMw7MNb2VDnvcsejt/Fhvb9SUuPGPCEZISDwtAx2O/s8qOvFpdr54KA
         HbCAcEDbEbqT9BTlzw5BOUPlvWYqtl5nfDTGnbLeM9VWLTMFkrNoytJYe/SFBo4KYFLH
         QK4g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533N2N+F902XNFfDaBQWBm23tFp6/D6SmNF0b7l0ByLdw9HAcR22
	pIMuRYWhcewWnNkvMoOeoFc=
X-Google-Smtp-Source: ABdhPJx6wU2Jl8Wo4HWd0ao5do093Az8kLCCYN7zAQWIGmyfQyQNgcj4kJNrhpgRgr9S43yMUO5xHw==
X-Received: by 2002:a92:cdac:: with SMTP id g12mr6496548ild.201.1631510636522;
        Sun, 12 Sep 2021 22:23:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2c82:: with SMTP id i2ls650899iow.11.gmail; Sun, 12
 Sep 2021 22:23:56 -0700 (PDT)
X-Received: by 2002:a6b:5819:: with SMTP id m25mr7596855iob.105.1631510636157;
        Sun, 12 Sep 2021 22:23:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631510636; cv=none;
        d=google.com; s=arc-20160816;
        b=YzToWOsIdD3Ye2p5wr3433LiMOdW4TbS+sMdUlogzHYbCHoZLTg0vtE4eXavNKKmfR
         xioYQ/elOd9cHv0bOEpXdcRIdF7oMWWC4t23/9vMHL94gkAsTXBqO0om0T4bUpjOkmNB
         5Qi8b7d4JunaF6MFM/TMXGcx7cd2y4rPiPqKvExpCBsMRaIAzplS8ycG1qfB5q+oNSHo
         AvydVGqRcxUNLduQwfZlg3HmaDazWUWWjFc5B3aq+t8WmhVQEC6qkUpR0JhuvROppVLn
         TQNR4iqCthHxO24ygmS8EEpVHK6qQ3CzjdzrNURJZ+DdLBr26twfvs8l9WvdqzhXQydE
         bNVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=z3gD2xdewsgbM3N4TOPz93GOXr7vhVRaV13eoRS88WQ=;
        b=jWyV8y3nNv8kFEtv5MU9qpJz47LTc8r/2Ct5LTwNwxPtn00M9nzWeGvM0UMBgJ3n0A
         qogj8aL+qoO4+WF/bEn8iQEAzk0p3Rrn6F+4NDzk1AotjuXGVnGxou/zm0JtNxuwoWle
         26k0TiI72ud/flW+B9scGiUo6kpT6cQcQ++qK9Sn1qrToIgF0TEMeyN8b2bG1prCNFbO
         Vt2LFxscHEfDmsYml1+VCiKm/niNfZyvGYolLuxxJvcX3sOglVLrUGANT+itsypuItGD
         nBy23X/Se9aTxF0g72gVcXladxMjhEPmjxypGqkiVqjzxj0toW3zmIRH8enr0NnU9HB4
         b0IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Jjp7auxd;
       spf=pass (google.com: domain of xinchao.zhao.kernelz@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=xinchao.zhao.kernelz@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com. [2607:f8b0:4864:20::d2d])
        by gmr-mx.google.com with ESMTPS id z4si646840ioj.4.2021.09.12.22.23.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Sep 2021 22:23:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of xinchao.zhao.kernelz@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) client-ip=2607:f8b0:4864:20::d2d;
Received: by mail-io1-xd2d.google.com with SMTP id a15so10506006iot.2
        for <clang-built-linux@googlegroups.com>; Sun, 12 Sep 2021 22:23:56 -0700 (PDT)
X-Received: by 2002:a02:95ee:: with SMTP id b101mr8042027jai.96.1631510636042;
 Sun, 12 Sep 2021 22:23:56 -0700 (PDT)
MIME-Version: 1.0
From: zhao xc <xinchao.zhao.kernelz@gmail.com>
Date: Mon, 13 Sep 2021 13:23:45 +0800
Message-ID: <CAP7CzPc7-WAifJ=pyQjiPzruKm50bPVuQM0_Jg1Bx1HeqyPA5A@mail.gmail.com>
Subject: 
To: tglx@linutronix.de
Cc: mingo@redhat.com, bp@alien8.de, x86@kernel.org, hpa@zytor.com, 
	nathan@kernel.org, ndesaulniers@google.com, mpe@ellerman.id.au, 
	dan.j.williams@intel.com, tony.luck@intel.com, linux@rasmusvillemoes.dk, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: xinchao.zhao.kernelz@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=Jjp7auxd;       spf=pass
 (google.com: domain of xinchao.zhao.kernelz@gmail.com designates
 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=xinchao.zhao.kernelz@gmail.com;
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

Hi maintainer:
        This is a patch fix the unused macro definition
Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP7CzPc7-WAifJ%3DpyQjiPzruKm50bPVuQM0_Jg1Bx1HeqyPA5A%40mail.gmail.com.
