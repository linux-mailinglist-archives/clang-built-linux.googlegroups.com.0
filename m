Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWW24L6AKGQERGB6L4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4015029CCAF
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 00:29:31 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id b13sf757566qvz.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 16:29:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603841370; cv=pass;
        d=google.com; s=arc-20160816;
        b=t53dN2kLq1CmR+nUGND8oCat/3hwg1sp6tbr+K9TWU/RferR061GUwlwJnGw4g7vVx
         rtUFzsv6CWmN7DS0flClx57OpnpbFMIoD+eBRhltA1uOx5sdfttWGnF+G80bZ3kRWLdX
         7bwOs38Vn3GVS8YKo3KWJixL79J+Yw78dHVWsdwVTpFtro7MlYv+1zvbH5KRwDrZhrMb
         OB7JdWCFl5i1TXBoumTioN0qP/VUPEuRQRK7vguYPCF1w0sAWuKUHimU4Q8vB2t/tkpF
         Zz8BRYLuoYUdV2dkKUiDKD+ErKc646M805jnW0pbRo6sAhHDiaQ23ntJMwu1EDH+AlX9
         j/AQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=DL1N49HGjpVB7nbFUG3k5CaD+tJQ04V0s3hSFsz69Uk=;
        b=VkF+PyumkeooTsdfptDfVoa6exAeiKqs4m737IDdebaUw3Q+t8FxrJyEngi/zLcD7z
         LWhuVDBqV8EDWsNNC2P5KPtHVoAudrkAFvVUjBrEeabcS76L+kWIpDbtGR+C1XZFp4ei
         vmkRMjkmgDfKO1WOx6SMriDhBsPbVoRZjQ5ZCeG8GMWKgksYRbst8iwl5uRyLjlW1L09
         8T3Del9sPQIpZCFAoH4r9k+SBjWI+O6bAE/MDFpdUOdx4wq10FwwWjHtzQ/DXaPgBkAE
         JPZJ9YFyZhy8hfkV997eX8y0qDjkgkRwNylnPT81M2nNZEnb0ItRR8wD71jb3Zb80fpy
         N+0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=upUrTZ2l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=DL1N49HGjpVB7nbFUG3k5CaD+tJQ04V0s3hSFsz69Uk=;
        b=e6gkuXhstJeXkae0Z/PQBvdKCRXfowqPJjOT/6N012D17TtFad/alrLcnSUtEKuTAB
         UcQ2BzoITdkxuNWmXEdcctaci2ITttt+1e5ORjNYDzczppfLpPThuLMbS/pQDNZQA+3u
         GrEldrOEyUb74XqUhifSnm8jftxk7idpO5ENM1PTApTw8S6wWLR98EiKX6ZVVB3LEzyF
         To0zrxAzTdzldpAl0eocUIx+2F9xt+FzfF40PAqD4z9HgphUo92GPKZ48qFjRYzujYAm
         /ca2rse6aj4TdhY9yeXSBjlTp2HefEUWw0w4SKmEiJIQ7rWC0ReBswEM5lY1sit6Joov
         gEYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DL1N49HGjpVB7nbFUG3k5CaD+tJQ04V0s3hSFsz69Uk=;
        b=QJCBSyVZXLX7y/gDOeORvYt4E1w+oMj4beQ5EOrAtxAn/v8YjOMFTZPigfDVRMQGG6
         BYWbKVmNKfptlogNoEccwwfBUABn/VIjq53axG9usuD+GQ/GGUpc9cocPO2frL9bXpGA
         RFlWplAV2Stx4g8QxwRNVypM5YUEUDEps1DlmSl233d+e7mNAE+l/wu15888L7L18ayq
         wAdVKxHlajjC9Ks+i43zMEyW5fW3xZIBTgzvpZlRntD2T8ejTQZmFUyjUQcQHcZ4ld7W
         sPeZ/q7b06d0/sGrCDwZNrb0f8SKBHHEFPGHb3rUr8bJhj/4E9C31HviBOyehynADlLG
         W5nQ==
X-Gm-Message-State: AOAM532Er6BDpZeyD8kC82L5MFqYYMMh2Mg6vQOPazeLZUso9lEf8esO
	7Dhbb4rPNn8B8ZMxh8g3Cpc=
X-Google-Smtp-Source: ABdhPJw78W1pyRvrZo++CbS7NtRIXfq/ThmpkjyCma/8TdJjAjeBCWk3fC5uYF+Uy1JaXhFXxtGDeA==
X-Received: by 2002:a37:aa46:: with SMTP id t67mr4710060qke.488.1603841370314;
        Tue, 27 Oct 2020 16:29:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4d0c:: with SMTP id l12ls865895qvl.4.gmail; Tue, 27 Oct
 2020 16:29:29 -0700 (PDT)
X-Received: by 2002:ad4:4f46:: with SMTP id eu6mr4953702qvb.9.1603841369813;
        Tue, 27 Oct 2020 16:29:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603841369; cv=none;
        d=google.com; s=arc-20160816;
        b=k+UiKOqum74HdbL9Tg/KCXH/uTqHQklMy0uTPDgJPBXpk0aGag9XiPLjSZXTh0vY9o
         p4c1/mGTHsy+kMpiEEehczXUmv3dKvIjEvgNySMy86wmQJ408pWAz8n68j4ZEmamtxuV
         8xV2ygXe1jIuaFg5qIl7IDUaafR5PXWRODkC0h0XBmc6BDOKCxWybUWFaCptg6NDxDrt
         a4EZkADEMTfzA8Nm58mB0h0BEXZ6jhqlv3p50Ie8OVdEFW1NCJ6wE+dfRI9kmXSehNFu
         mY7PX3qRxnkm6tLj4X79Cj0EumDZio1vvPAEedT0T2ffSz/xx/NXNk/Gilc69HVk9jBm
         yxUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=JxDtWghWI5IaHjEami+ieysTKrrtiOIIUwBaYeLTyWQ=;
        b=uAkrD/mIVRadXmmmYexTSAAX0Ym9OUa+4496FFgqhvEaA+XKaP9pOuGUlJQyUiesY0
         QrsJTw0GGKm3mQE+PhTB2mcrJjuMIbgETNVXZuY3rMvGfrDAVqOwXWaz8ipWAhij2sli
         W8W8mmUsoKsh6deEC9OuxvdNoRr3VnzCzfPG1fVx+5Hk8KVd74wh/yTEDj7i9VRHzISi
         uNjnefexRvAxlCg4QfhLK6EQhlkJ84+mY1qSUq6W1+xAPuK+bqwKgv6/tiYnMMnDe30N
         fhKvFiTCzAGbRiS19O7JCIHXcNimbpagjlFRp6E4alTIAXP4VsutnVIdhv4UyncFPL6e
         MuRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=upUrTZ2l;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id p51si229523qtc.4.2020.10.27.16.29.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 16:29:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id t22so1572386plr.9
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 16:29:29 -0700 (PDT)
X-Received: by 2002:a17:90b:110b:: with SMTP id gi11mr3974124pjb.25.1603841368765;
 Tue, 27 Oct 2020 16:29:28 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Oct 2020 16:29:17 -0700
Message-ID: <CAKwvOdn78WAUiRtyPxW7oEhUz8GN6MkL=Jt+n17jEQXPPZE77g@mail.gmail.com>
Subject: LLVM_IAS=1 x86_64 patches for 5.4 and 4.19
To: "# 3.4.x" <stable@vger.kernel.org>
Cc: Greg KH <gregkh@linuxfoundation.org>, Sasha Levin <sashal@kernel.org>, 
	Jian Cai <jiancai@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, Dmitry Golovin <dima@golovin.in>, Borislav Petkov <bp@suse.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, mbenes@suse.cz
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=upUrTZ2l;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::632
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

Dear Stable kernel maintainers,
Please consider cherry picking

commit e81e07244325 ("objtool: Support Clang non-section symbols in
ORC generation")

to linux-5.4.y and linux-4.19.y.  This allows us to use LLVM_IAS=1 for
x86_64 Android kernel builds without warning.

Its partner patch (8782e7cab51b6b) was already backported to
linux-5.4.y as 8c627d4b15de9, and linux-4.19.y as 6e575122cd956.

https://github.com/ClangBuiltLinux/linux/issues/669
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=e81e0724432542af8d8c702c31e9d82f57b1ff31
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn78WAUiRtyPxW7oEhUz8GN6MkL%3DJt%2Bn17jEQXPPZE77g%40mail.gmail.com.
