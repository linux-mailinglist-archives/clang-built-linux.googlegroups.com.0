Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJUCUX3QKGQENSU7MLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0901FC149
	for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 00:01:11 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id c5sf290290ioh.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 15:01:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592344870; cv=pass;
        d=google.com; s=arc-20160816;
        b=a6rgvj2KRRt5kFmipwZ4yOstFAp+LVNVQTZZZMoF53sWpeW7Lpk+ss1ZGP8zqLvwyy
         YI6VJRRuN/F5Kx/aZpyIkps+Ao6SCzkDF6J0k1KEgwuKtkTfA00EuZX0DBOy9CLts8ND
         rL3hJ4jNQBXX3Sy6VQ3gt25YIqF8FkfZxHnDKT+BJZAsGiIjN1ZaE/edpOnuAcdFLfSu
         V6xfgO+wIhCzO3VmI9Y/j/EzV3T22NNRmQABGGEZtsUywQc2RiYBPrib9d+VYrcVSrno
         tjSG3w7sSNdJm6BYmR0UC3jHdDmP1y4W8MfDlWzGk0hRtmLEaJ2JgLZX/vzSpAzasc3w
         2xSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=G3zNhXgU6lLX6rlI0VbvXROPbn2nZntX38MpQaHAQ9M=;
        b=Y3ShKVab958ij3sVS2faHs9ec5yOZv8U0VHB4nGMUnaH6hTCRjjpgRQR5qbP0CJ+cp
         VmlcHapoBqW6HgPXhqWFp262IRr3V3jD11EfzF5CcMGjPGMPwmgpZ3vRNDUhis+alRor
         El7KIVvlrZ2N/v3M+OPvidnw2C4L/wOfjAnwYKBGTQAYsKH/utLqGEKpPTizDdlNKNa9
         +pGTua2aiub/x8b38gFz+vb5hZNG2r2s1ma0dxWcAm84TY+WCgLYq1sXKO9a/x6pCLh6
         1J3P/MKSPygTk5GldfJ245dClNnvUhwKTWSAS30OOjG02CQLEZpmhgOSeNIP1rtARbxM
         8L6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=obF9vGIB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=G3zNhXgU6lLX6rlI0VbvXROPbn2nZntX38MpQaHAQ9M=;
        b=nFVNNrH3lvb0DNHG+CwXJfmADfAaDLm6Oh/udrls4u3cSro0B7ijUN8tVOD8ZAfWK7
         vYCv+CJtbo3qUae26jHOaDNcsFkenxU7QxsEYQe/dHbZMGzw8wkkrQrTmR7jk3cY/nfG
         glYlrOsI13uJNqbc9VM3Bfz/tixl3js0INe65hJVUlteXuowmwFhXdvixKSaOEldjpT3
         rlqVNTMhOJeIONE1DJJU+p49zkTwOIqSJABjhjIr2w3fn2LVqC2Mr/IAvzTbCiS3s7hU
         IsdyYJ0hCoeEn/2/+ZE2gdr5/DwQbiqYrX01nxyhu1w/ppA9IHbWRGHkGiFDNyDW/Us4
         EKhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=G3zNhXgU6lLX6rlI0VbvXROPbn2nZntX38MpQaHAQ9M=;
        b=i2VB88RnpANKCTvW7pyxlCBjBW6zPWfjOMx8Ie2xROBW5J1F3Mdcb1RgqjAa+kQi+m
         Jn/xEn1UOUjs11c1xBOj0nSa3PhBM8ojN1a7bDLsAT3CRtz1MP9hw3uum85/srxRnCxE
         KHibenwpQlxidI1jumK2G1rQVs1EKMRsY2kQNs0BK808W2M/9h4Dg+6Tifm7vRUisbET
         UR2Zcf6IDWGOkEpY1mjqTQL0GEKYwG1sWq3QKKm2Ekxnq6AJPDvv8aNKrhJd0ZR9e9m3
         5EUU3Dx2x8HAtvAb28bZwTvKMm/89t7mMJTIOF12/xKUJigM1GWXXREmLyuD9yMpGebY
         KIlw==
X-Gm-Message-State: AOAM530eiD7nqik+KQ72Q9k4PPgDC4G5O+Yn+daIGYcMh76+MuDjx/Aw
	18HxwKtQesmO1WZa7C+pbRE=
X-Google-Smtp-Source: ABdhPJziBUSJBYKu842Rpx7E66Ye5va0awM13WvtfuWmOX0/l1eNeHaj0Zidk3NpozYgTG2ZgvT4Bg==
X-Received: by 2002:a5d:94c4:: with SMTP id y4mr5284258ior.182.1592344870204;
        Tue, 16 Jun 2020 15:01:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7207:: with SMTP id n7ls60335ioc.3.gmail; Tue, 16 Jun
 2020 15:01:09 -0700 (PDT)
X-Received: by 2002:a5e:c706:: with SMTP id f6mr5246239iop.186.1592344869689;
        Tue, 16 Jun 2020 15:01:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592344869; cv=none;
        d=google.com; s=arc-20160816;
        b=uiZUaWnbBUyKiLCR2nL8HteI6hWSQhtCzFJRv8O8YCTRxuVdLctE4SB3zTB8gDG4Pq
         JiKCKCsVflV2bvV/LM0ol0mn7VAlj7N3IdTgYE7IaNj4IST3EX8BUrJ0MnOw+d3L9ZHH
         GDUIFX0w178a5Bwnl5Cr+qkOurhNGhTCScjndsjYkdXLk0hcY/++xI+4b1l4Nf0MhsH7
         YIT5bBTUtUc256/jW99ZD2Pb6dArSbeBhrINVyJtv6T4sh+JfRNRCXQM+Ghp7M5dNklq
         1xeKVgP2emAVWGnGeSuRI8xS9F7E9edq/zR9v7zjrUKTE3lY+Lw3RcnEMuKWpjNg61KW
         bdWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=JJHGnakrG3UNiXvHN2GaDshkSkr3DYnKyGjAbaXgLpU=;
        b=MIBj8qyGkhvrgk9w4LHPaqrqxDVxhUx5V61vWLeeTcb3opHH3HqlHSr8dycio0YXWd
         vyC1rClVKKGL9e7eN9Ln/UXhfruUsdKTXCVt0NomHjL3dhLMZd3WUnSFawMjLTUpsP/Y
         z5pu4gmBQ9W51ItkATZ7sMqzpQvuPFD4FgZ3m3WkB+qgbT5kGRMn4l0TTy6LHyaFsaAV
         zXdLZ/f6KaMcO2LQ/F8zh7RVtguYOSss4Jp5aELAX2HLT5rZMpqDauHLxj61jzip7L9w
         qzYNuzc7Y251hYhq5zmOkM1yyFEdGdOhCYGSdMP0okEI3RbJ/Bi8oXDvZrZrpZsNnag2
         0Oag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=obF9vGIB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id v16si1195178ilj.1.2020.06.16.15.01.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jun 2020 15:01:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id h95so3815pje.4
        for <clang-built-linux@googlegroups.com>; Tue, 16 Jun 2020 15:01:09 -0700 (PDT)
X-Received: by 2002:a17:902:b698:: with SMTP id c24mr3738112pls.223.1592344868633;
 Tue, 16 Jun 2020 15:01:08 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 16 Jun 2020 15:00:57 -0700
Message-ID: <CAKwvOdn4TURc7v8fKhMy0-R63HEVrvA__UpxwHWCkvKZ1NYqxA@mail.gmail.com>
Subject: 2020 LLVM US Dev meeting CFP
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=obF9vGIB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102c
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

Hello all, some news from LLVM Weekly:
http://llvmweekly.org/issue/337
- llvm 11 release schedule:
http://lists.llvm.org/pipermail/llvm-dev/2020-June/142172.html
- http://lists.llvm.org/pipermail/llvm-dev/2020-June/142224.html

I've already submitted proposals for a refined talk of the one I gave
at our meetup in Zurich ("Everything I Know About Debugging LLVM") and
a "Birds of a feather" (BoF) session for ClangBuiltLinux.  Bill and I
are working for a proposal on "asm goto w/ outputs."  I want to submit
another proposal about our war stories, but might just save that for
another time.  Anyways, sounds like the conference will be virtual
this year, which may simplify attendance.  Hopefully we can blow up
our presence this year. ;)

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn4TURc7v8fKhMy0-R63HEVrvA__UpxwHWCkvKZ1NYqxA%40mail.gmail.com.
