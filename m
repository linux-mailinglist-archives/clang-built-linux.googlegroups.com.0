Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKHX3LYAKGQEXASCBPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id B04A61352C3
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jan 2020 06:35:37 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id m72sf1948112vka.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Jan 2020 21:35:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578548136; cv=pass;
        d=google.com; s=arc-20160816;
        b=lFeNGyhSDZu+5pvok+cJo96jBwffcEYbpyYuuwZTiNy/wnLtxIvhTbVEaKc5AvbIxy
         vb9nOex8Is1AbXqxgYlhJ51FwmvsaKd7mV99DtM3CKUKKjGVL0fcWAhIMo8ra6D6hsHH
         84R5iK5OTS4p6wu4TWMaGhUdMHepBqulYJusF0+BZy+6n3DXvKD019zDXfqFDrVb03LB
         Rf2Sc2R2CReWDOr1gXbyib8+yQ5L/OyI6Bp6bPXXoP9/LWsVUYqOS/c8M5qatUgzyALZ
         QZZYvqvTh3TF716aotjMuGINAo8c4uyisx4D6SElxa8ET9+KvNZO7SQKUubnPYO8ppID
         3sXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=vwszeTWlMfES+9zp3yTDnhPREgM37zJeNjIrAFXUOyk=;
        b=VoRSa7FMxszNzLTe+bjEvzbVlLU2AUATjzbtOtegyr9K3GWCHj5Ho34nDJI7TEE/tE
         iiO8Vn+feThsnoNwSHP0l8zmF0QZxFvMwmQ0yvsCbFwbnoyfbTpV18Wtv+sBvSYm81j5
         gfw+oJBr+QksrWk9N4q5FoJfZRDd9W1XJs9i2lz7P4Qdo1kDMGFkK88C5QfnrBwzqJBr
         YND7Vn9LUvsmsmW6XpSO88X3T5YhWTWmPJCQsinc8p2GelSNm9FWlicsLiD6SAhQp/ow
         Bmne4BlF6HRrrTGs3cagsRTlB14sxl4aXr5A+2ElQUCCuTje7TXWVUMNg3zUaGmu5kfJ
         6Pqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HaSKZsme;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vwszeTWlMfES+9zp3yTDnhPREgM37zJeNjIrAFXUOyk=;
        b=llGY5/SXAzl9cuHSk1oFqWxfKTiRtxarekwCNjbSRQnFSbKH3hCNJytAvZ0v5DhfAG
         ZDMFUEs1G/LqlhJz5fdx+jkRMBM/zimNvroZwLn4LetAvHB3iifa2Qo/EiihM2RS/nnT
         vvSjGIBXxEVfiDUwNYuOfcrcyRyRcVlkydSIpBFHnTg1LtfD17SqnCrmYO7HFgqgID2V
         V2GU6BjJzpDOO/KbYqLiXyMSgVNsf6mqpC9WiIsfSTph6HDDXFuSnLjPF9C3QLdU/Nnx
         zDj6Yq0lf5YEcj+n07LpA6q6fgLsbaggtusoijCvY8zsqZz6IT+sd9s0D0eRpzq7f4FM
         fjAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vwszeTWlMfES+9zp3yTDnhPREgM37zJeNjIrAFXUOyk=;
        b=IJV9W+53dT69c/GRymDJc5mjaI0H7YzgizFUCGn+fSCHTyHvWpTXbQ/446r5RpKJfp
         VaIZvzRsFhUVYo1kA3AFHFUDHl9++zxfWqRLDQDCxOXggefW9g6LYA/cM9ERSdPLI/+y
         Xl63KJ1YXMtOdK7qcNQFZYf1QVyUQW9FZC1tsxpYsmU8lzl84a2P91jB153W5Tw1yHiq
         QorLzXmXnv37oITrOeAckMRM8wQ1PI9zcvubo/HGe5JOOhvb/5OQIlvnSpTjYfuguPwp
         PPYL7tGTpuxhaIBGdIt0DH03yyYO2ETslEKXFzThyxGSrxsPCNfyPi7c+EfRrMxTHb9I
         Azvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vwszeTWlMfES+9zp3yTDnhPREgM37zJeNjIrAFXUOyk=;
        b=SF474Z2IFijDYzvJ4kAaIAtHxSRR5mWkKkE7J/aHLXPDBlzBup3QmuuZMQqvcu5x+n
         eaxnFiErhf+V83u/Vn1MoyGQfy5jaDDFZ7zibSbw/5Tq+4V2TcVg4+XDjwOSYbbN+rrs
         7p5XvCvLelNLe4ETnB+bmbJu8wrbNq7K50kPV1tOlKeoxms5auVTWlGRi1S9q/v4R0Ex
         9fb+6hvvjCoyUCDOFekqKVszXwPuknoOMVto+fnXA2CSmg1ZEN/0gRsu2V0nZgE2EbkU
         OPO7EayiKcgQI40tES4YGMh/14Kru1N5GcvXOxz2V7AVQwgdOhDVRpvkW8y6/JRGuEOL
         0jkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQUgexMzOG0bTbQ0Sc626k6Q1CXGZzdl1U4ef41ZDg6GmKkCe0
	YJza2Ot2fzJIZrSCd3sA1eo=
X-Google-Smtp-Source: APXvYqwv29d6Uv+DxoqEy1zqjWyPkMDPuuYWHyBsp4GXAL3Iq6HpaV0oNXPU5s7ZBum9dIORq/J5ig==
X-Received: by 2002:a05:6102:52e:: with SMTP id m14mr4844029vsa.25.1578548136344;
        Wed, 08 Jan 2020 21:35:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2aa:: with SMTP id 39ls50103uah.15.gmail; Wed, 08 Jan
 2020 21:35:36 -0800 (PST)
X-Received: by 2002:ab0:266:: with SMTP id 93mr5794185uas.58.1578548135980;
        Wed, 08 Jan 2020 21:35:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578548135; cv=none;
        d=google.com; s=arc-20160816;
        b=GNl+WY/Zk+old4bQGyGPy4VjiWr90DGNSkUac1VTLf47lu/mvzGjcGagAVZlYLuwAL
         4eQujUi6BzRZlLSjjdGN+xRjhHGMUDWDrhNggCJrrS+K83azLv+padLpm+Me3RKY5BfQ
         5v/VmsQfPvJK++i7MTFwp+O42l3GqoMMUWmSTkrXqDmZcI6A4975ns1LP6+NAzCLAsuF
         swm/CnOzH5IT0IQ9++b4b2ic2s7bxUUEasIW05sJy3vPZe34gJiBtZlqjG+3nk0vPfoO
         0fjIqB4uaSGSY0bUWn1El0MKAYGX4yhtN9lUFsK5b8yZVeKaa0YBfZatqcb/WVYkSCD1
         m7Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=BkIT0PqstJoj+9Toq97jW5uAnn2i9dxFzWNrq2ULEP4=;
        b=x1sBGVX6Wjw6rv/SB1XecYM5OdHcZOO7u+zVjOzmL2O8BZQxIVqfe/DqJTzoZ6Majq
         m7BHX3rYFqg7GSj02QP+fYhTcX3UbMkSbm44qOW/UlCpRi0sO5sudKRF/n8e2DDxvCDq
         d/vUt6wu+6/hvOBh7hU1q/cjNgca2a6ogf6xyFNAFNDt8DnC9y2xoWMG5eW+gFrCvxPN
         sS0Y5NdxiPbkuNubgbGpjSnlIFwSkEl3fkR4yTQU+y7kvUwJ2PfMmE4CLODW41hUhqp2
         CgeD/ERBjzK7V8dQLiUMa9NkiTIOk1XAE68YbVPOYDgBZwwAe53G3528XjP5rKlg4hAM
         ud7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HaSKZsme;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id k26si238591uao.0.2020.01.08.21.35.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2020 21:35:35 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id kx11so632726pjb.4
        for <clang-built-linux@googlegroups.com>; Wed, 08 Jan 2020 21:35:35 -0800 (PST)
X-Received: by 2002:a17:902:9b86:: with SMTP id y6mr9010040plp.253.1578548134961;
        Wed, 08 Jan 2020 21:35:34 -0800 (PST)
Received: from Ryzen-7-3700X.localdomain ([107.152.99.41])
        by smtp.gmail.com with ESMTPSA id k44sm1168678pjb.20.2020.01.08.21.35.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 21:35:34 -0800 (PST)
Date: Wed, 8 Jan 2020 22:35:32 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: Current status of building certain defconfig kernels with
 popular distributions
Message-ID: <20200109053532.GA2317@Ryzen-7-3700X.localdomain>
References: <20200108073928.GA51655@ubuntu-m2-xlarge-x86>
 <CAKwvOdn2OqDjxF7KEua9PMKg8Du07x+LEpVkptB7S4v9g4f87A@mail.gmail.com>
 <CA+icZUUcngQThNS0bgfBUmPRsX0C17z55MxHLhuYAuM-0ZgxPA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUUcngQThNS0bgfBUmPRsX0C17z55MxHLhuYAuM-0ZgxPA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HaSKZsme;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Jan 08, 2020 at 10:17:00PM +0100, Sedat Dilek wrote:
> On Wed, Jan 8, 2020 at 6:10 PM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > So looks like anyone with clang version < 9 has issues. No issues with clang-9?
> >
> > Thanks for all the work that went into this report.
> >
> 
> Happy new 2020,
> 
> speaking for the Debian side: testing and unstable ships clang-9
> version 9.0.1 (see below).
> clang is only the meta-package pointing to clang-{7,8,9}.
> 
> My last days at credativ I talked with Bastian Blank (Debian kernel
> team) to have an easy opportunity to catch Debian's kernel-config
> without extracting from the corresponding Debian package. I remember
> there was a link to catch them easily.
> Personally, I am interested in the Distro's kernel-config but
> "working" in sense of buildable defconfig is a good first step.

Yes, I would like to eventually test the actual distro configs to shake
out issues (like the Open Mandriva guys did recently); however, I think
a good first step is making sure that all{yes,mod}config work flawlessly
upstream, which they currently don't. It is on my todo list to go back
and look at the blocking issues for those and see if there is a way to
get those fixed soon.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200109053532.GA2317%40Ryzen-7-3700X.localdomain.
