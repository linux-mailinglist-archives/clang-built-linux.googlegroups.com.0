Return-Path: <clang-built-linux+bncBD66FMGZA4IN76UURUDBUBCHYOWT2@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6CA46228F
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Nov 2021 21:51:44 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id h17-20020a05651c125100b0021ba28cf54dsf5345485ljh.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Nov 2021 12:51:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638219104; cv=pass;
        d=google.com; s=arc-20160816;
        b=olJvd0Ujy+ZoNKWCjBf/bdx438GJ6eypVdun5C6vyRtEAvy7XrMf3hrdu2/+s0P4sc
         rTorYo81GlXAO6e86QmGTEqaI6nm4u7ukfEo9OdYsNY7EzM+GF5Qh/fW+eqiv8lhsKgw
         67hY/GQV0XuYhqamNFsnYIvyj7ksnxi2csRzk3E3hmdtof9c/9MVR25LxlJKpACGc5hO
         lI4C9bMXjwgZMfJMPhzqAtarLny+wTtEyVQLVCZdkaNTvPiAsCZZ5Z2nDxZbWCCXAZot
         gFyItG2tTNFW9P+qOBxrOj5lV4b+iuHGxwejlZp1jH+RD96O8Vv0o0evT2HSnUiVBKo3
         l5kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=1fUDSSs+Akk71l6suwSwpqZIOZFTLSpKscuZJAiKmh4=;
        b=D2xDxd681iy+m2FvmMkea3LEv8svqii2VWn+fiVkg35OIF5Iy/PrQJwu/G1X70fNV5
         n1TcFjioI/ro3A9xkq5fdG8PeGgM2clrE/YymmsplNV4+f7m8UwGS09Ot3x/OKTlmpmT
         PpYH1BCi0ud1KUExs9k6nxzTYDR0oRfOBJlAouwOTrm3Da0+pdba5LqNlUFuV8Cijidl
         lwnAoO5ztyNXn3u1m9E6c6G94dVh7cIE185jpAVwlxkzxbYCDz4vU+OJQgnAAf+4R4Dz
         IsVIYSDj+uaRkk4VsPfWGXUu2TcAuAXO074FVq0zMUtLrvtEndCVxY90SbGDEe5fexVR
         qdRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=SBBy5mC0;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1fUDSSs+Akk71l6suwSwpqZIOZFTLSpKscuZJAiKmh4=;
        b=k/QD8COOyOe13XB2bpJBUFg/c3tYBxwCLes+pq2vwRlAJp8Ep/exHbpA0an1+HEiWE
         3yG8MforSwAU/sDDa324b6/Sz/6lFeeQG6vKopb3AQ3FBrmtRh4r/OL6D37voCt3WwcD
         QWuBMUym83pZAStIoTHxNWbk4sbPuH+uvQXOKwLh8PJ91YHvIPnVboRGuKGR24W2fD3f
         Q700f+knZtdYk2lHvY7gMAsAKHCcDAjEVUdPXhfocOtaI03y3Hbq+tAkV707+FOr6Bne
         ca31KJsjuLhNnoaHyayCd/q0ptmLParHkd2HWp80GvfKvO6yBp3QIC6mQGCS/JpYLNlO
         FotQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1fUDSSs+Akk71l6suwSwpqZIOZFTLSpKscuZJAiKmh4=;
        b=zINCVrVzIzc4n+if3DAbOe1vLd7qH6wvIgOrwnp6JT57fcSGeMNOMuT/102Yypo+6v
         O1xhH6iKJY7TMzsNzc9A9uAHy+fj+ytAZ6QymR7evHpCLlI4H6nC/Ssd0Z9pW0CRHp3J
         1hREOY1Wtl++LrFrJpTGE0zf1BW2czc4fDB6pAQD9nK923FbxCkmew+16o1IGoAOClAa
         aijoP7KBfUbvGwxwV+GXv0MknEmNezGgaWMg5f1QLghYQUHLcIeeNtRglf+lzeH98X3f
         Q4C+S5oS6HAJSymTXyembOcMSpgZu5/4PTWNCeLllBk8pdEJCeEuIUGx8EAAcdOhO3iS
         Fhdw==
X-Gm-Message-State: AOAM532SODYqi1S7JYJtU8tfJtbFX/mKCqltbpaU3JAZmnkf4bgquQgt
	2MR4Wn52PoVxJqvMSiy0xR4=
X-Google-Smtp-Source: ABdhPJxri+X4kmdb5MVDWxxhv/UXDsHCVr1sffoLn3NXky+Ny29GQMR92lCarZL15QA6CatlMh8SQQ==
X-Received: by 2002:a05:6512:2351:: with SMTP id p17mr5172706lfu.243.1638219104048;
        Mon, 29 Nov 2021 12:51:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3d9e:: with SMTP id k30ls3063982lfv.1.gmail; Mon,
 29 Nov 2021 12:51:43 -0800 (PST)
X-Received: by 2002:a05:6512:260c:: with SMTP id bt12mr11473360lfb.506.1638219103067;
        Mon, 29 Nov 2021 12:51:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638219103; cv=none;
        d=google.com; s=arc-20160816;
        b=GZ4TmmcRdKThGS95fu4YHYotev09oWhZiF6GL51IO6UfOUY0c5Sq2z4L8kyu0rwTuP
         LNqvFQf+ATJCBbwCjXifSNzv9pKELOugDjXqzqITKjs+AVbkV5X8jjaav8vgb7o20MZz
         gLdVb1s9tHg1az4ZCRl43hu34EeOQWk0NnyQR+qiBVAVzAuteyyde6lgczmoe/NC97OL
         NZx2qfKsQvkXsi7GWdDl8nShnXzRZss9kxRaWPEOE/1rKuiuc1PyYH1Gw+a0Jpmno3MT
         +jFPqSp/tKqpw7VF3H0JDsficUVP3UiFiPWXbuKDiDpNT2u8Z1UyDRk4Gu7qGeJYlHpr
         o2Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=igrEH7/Z9dbRa8XHvu2MGkwJApKB5WwW4BsfLj6Cnow=;
        b=nP37FdQsr53E0jAdSkTjnjmibw3h0ANTmXwsgmeTc/B/BnCy4DzykkR/jWJEOocDV7
         ZHQp14TOiAunir/gS3TOQY/pN+FaAyGrsGeREuoI14KotKKouLaIDbekEVPhp52+FTpi
         CGz7e008PhquTO4vzdEwdngQQTNU/HMCBlJrBRIrgjOWorS4AqQ6LLAAreOSAAXx07AG
         1f1+ZiTDqwSLlf5BfbYzT4NblBHL6xx8jC5OERLEiEovyVdz0M4mzbdNRXI+Y/NC4gik
         6Wv6ANjHE7pVtzoLfj3mc9HYxC7qOEPKDgEATZ/Ihgw1kFV0AvWgk6X2wRcy1ssr0k0t
         QPVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=SBBy5mC0;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com. [2a00:1450:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id i12si1636336lfr.7.2021.11.29.12.51.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Nov 2021 12:51:43 -0800 (PST)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52b as permitted sender) client-ip=2a00:1450:4864:20::52b;
Received: by mail-ed1-x52b.google.com with SMTP id z5so12207912edd.3
        for <clang-built-linux@googlegroups.com>; Mon, 29 Nov 2021 12:51:43 -0800 (PST)
X-Received: by 2002:a17:906:4fcd:: with SMTP id i13mr64779505ejw.472.1638219102387;
 Mon, 29 Nov 2021 12:51:42 -0800 (PST)
MIME-Version: 1.0
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Nov 2021 12:51:31 -0800
Message-ID: <CAGG=3QXA5eEYcQEUJc3yhKXoWr05JhFFSmSZZrYb+2wTJprdVg@mail.gmail.com>
Subject: Backporting KVM patch
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=SBBy5mC0;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::52b as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

Who do I ask to backport a KVM patch to the 5.10 LTS branch?

-bw

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QXA5eEYcQEUJc3yhKXoWr05JhFFSmSZZrYb%2B2wTJprdVg%40mail.gmail.com.
