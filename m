Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEW4QP7QKGQECYUS56Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id A5AB92E0069
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 19:48:51 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id n137sf9448037qkn.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Dec 2020 10:48:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608576530; cv=pass;
        d=google.com; s=arc-20160816;
        b=USbaSoCuhIJGaxX/+4QTuctnPmNex0fmdmya4qCu0lr3RG687SibO1COkbL8RbyzK9
         i4GC8twmDK2ici25fm64F+OagNtTCcTcR50W7QIQnxFG+dWima30X4omdmfFWFAtIi8E
         0PU79IwRGZ9PnvAa1N1JRnFvIXWpl+IH6ciAfRtSx0qimYhJ+ukSPX8oIwGzI8cJ8zES
         SBla1ozUFsLY+8dGCrIlaO/hA3QdMq3Vu4nYtxY/l8/72D3CEAwVIFVW3M6JbJjDVz8s
         5Et5KBF0C04RWXp1XtM2GvCCxx/fy89h6dcJcGsG2TtBXHX6Cg/84RXHg0nX+AJwk6nP
         jruA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=jrjviaRVC6jZsRUg25p0liK/eUvc3lo0fwgYt20Oaok=;
        b=p4JisD79uHa+D1A461s9J/O5iAppUC11+PxTCQXo7D3oNmvoelE4jkwYZBzzwcrX96
         gBamEpWjxgaVVQeiqwONI7+WVijFanoQNYMkHuduL1QhgK+PLWrPWP4sprNbDNKq6guX
         C9K4HpOxGeLW4oTKvTNsT5s54Na2uG8q8n2QzwH2lMm4XGkvnKPNeqdFb7i0RNgvQ0cU
         fszhiGNCQqvn1RfzUW137+Nph4aldrrCQcx4uR3ILo6b0MasaMydagf0lSMqlT7OCnQg
         h+ZxtHRNWI47gz+vNqKTo/0/JcWnPigHFzQiyWyvyKHGKuSnUXl9DUTpNuG7yG4RcmRs
         98gw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DQIVW95h;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jrjviaRVC6jZsRUg25p0liK/eUvc3lo0fwgYt20Oaok=;
        b=qGUBtU98/CBWXTShjKelSfta5m85bZC9NxuVeN4748uBkQRk3wfE1c/AWjcN2FaGmX
         x9LmgFQ6pK+IUc9LN1wWSjj6KrAA6DtrDyQgO+PxobUIRexz24Rtd/IaKe5x9jM+cXie
         ab8EKiF9541zzkjN7r420hQ14jwjlzNhFSjbebITpF3v19RmvHw/qfpK5YwtCYEtZw0/
         gYG95Eb91C4GC0Bm9unA54ATU44fR84oI9nGon5tkNnF00EE6NiRoddWT352syFHR01H
         ojJvyk7bVNLD9giLcY9X3D0y5g7meZ70DoHYuQ3InKgjgyiepwXPPQPxT+bJP1fY5EEj
         U4LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jrjviaRVC6jZsRUg25p0liK/eUvc3lo0fwgYt20Oaok=;
        b=cZX0qx3WTl5NugY52796FJhpCObxsvARnNfb6WiYf1Vyap2COBg1h1PiGRdyHPWGhw
         BBZS6GbkFaxgr05NRfMNmZSYDLXLM1MYWdY3uAKcUDfVuMbSAJZHViivE+GZ3PvE6Ly3
         1TzYdRJ/71vUNK/qxAw3ZdVYW/1DMUpS0RUOty6FmrxB27rMvkL3Zb3NFoi4ygyMV4yN
         9QFG6H1PbSj6ourvzbf0oz2Obq0nVnSymy6IgkC7PUmOnpNyxBwQpS2eZlSzABN6GlFH
         8zDlU42s3fansA2FKAE1H7rmz1G+8IUD4dqjjNNIk1kzBq6bhuyQgc1U2QDoA/ZtT0g4
         to4w==
X-Gm-Message-State: AOAM533Sov81QpkPcPG93J7Cm4Ol3BVoifZf1T2+5nuxBg+cEThRWZLW
	DsMSPZamVJqJ3xQxanT0fK0=
X-Google-Smtp-Source: ABdhPJxXL2thZcrdQemzqEtxEN/ep+tyXH/CFgHSc3nkDv44cOLLpYjR5QgkJsEH7JglM8usGq5tHw==
X-Received: by 2002:a05:620a:5eb:: with SMTP id z11mr17708669qkg.411.1608576530614;
        Mon, 21 Dec 2020 10:48:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9a4f:: with SMTP id c76ls19100680qke.8.gmail; Mon, 21
 Dec 2020 10:48:50 -0800 (PST)
X-Received: by 2002:a05:620a:ec5:: with SMTP id x5mr18471943qkm.143.1608576530225;
        Mon, 21 Dec 2020 10:48:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608576530; cv=none;
        d=google.com; s=arc-20160816;
        b=Hk3QRF6WHo9UrlztS18zJXp1IzVaSNceY5cEEBTBjDZUAXxuzF08eiv6JhRynnJrII
         RV5kTy1+mQX/gZEPAuedsOpt7/iHnkI8MF6kPtHj+m3fZ3pgkMo+1oCuIYMC0dBqiY33
         w5rNjAehV0sD+hvNdJyu17HN9GKTXz4HBT8PKmYzlRThng/Nf3LSoqJPQYyLeQWJVT1E
         PAcstJa3RU2Zt7sAdM9VWK2sSD6dB2AlbYse5eD91XfBQWug0rTsRa9YErsrQAbaJx+s
         Cg8F2G7ZLhD23I60RwkOSrrXns8GwLNhvjK1KdBN79X3wp1z6+bBm4xsAbGTmLvhvIWE
         FK2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=i4Lx0yfG/JviP8UioQub7Y7ZWWcwYYZAeNhmX9bdYXg=;
        b=F2ixi2HJnXGnf2Ab5RImxb3Jq6lABF5+lQrdX6Rm1t66dEvuo+mxrb9KB01PwGiJlr
         9vvfEMMXpBOExOyf2tANNlkfE51jsQmsd0DYmWghXx2OTMzTlrQLm7OOFSmke/Ybb0UF
         74/xg7OOHfLKms023Kk/cLC5LN/mpvML/ufNZM9cYj2L6F7DkCRvtlaqToVMSHW9faPF
         J2acjcvFAnX2Y2UdfUp0qo8BTLIFVpQEcaxcWUs33IKDJFodpiMnfal2McCO8sSjL4mo
         A90G8tF9FfeiVr9R9w3tEoOfpgjkzZnXQohVSk9jO//GEDup5+9AfLOrbkNreGA9UmyN
         rJng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DQIVW95h;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id i2si799492qkg.4.2020.12.21.10.48.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Dec 2020 10:48:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id f9so6932916pfc.11
        for <clang-built-linux@googlegroups.com>; Mon, 21 Dec 2020 10:48:50 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr16618806pfy.15.1608576529047; Mon, 21
 Dec 2020 10:48:49 -0800 (PST)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Dec 2020 10:48:38 -0800
Message-ID: <CAKwvOdmVD+=pQ+p0KJuu_HHNcZKeSQ2RwGkv0fHqga4hwui4eg@mail.gmail.com>
Subject: A chat with Nick Desaulniers on compiling the Linux Kernel for m68k
 with LLVM
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DQIVW95h;       spf=pass
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

https://www.youtube.com/watch?v=xN7MmnFbHRI

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmVD%2B%3DpQ%2Bp0KJuu_HHNcZKeSQ2RwGkv0fHqga4hwui4eg%40mail.gmail.com.
