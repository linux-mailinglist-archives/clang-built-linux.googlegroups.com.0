Return-Path: <clang-built-linux+bncBCI6DMGI5AMBBQOYY73QKGQEHVE5LXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB0D205133
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 13:49:22 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id w20sf10194625oth.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 04:49:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592912961; cv=pass;
        d=google.com; s=arc-20160816;
        b=X4I22/s4HTq6vhqudXAxuAH2nFo60MKlPoNfJvbm8d78qABiLkbe6nsd3GVdqYn48L
         auWcwZ1/aNiCNwptKdq7XMhbeJfC7EuMzRvJuD9VjItqABIpHuFxedP4++u2EX6kSaKf
         r8TwdtrwNSUuGeP24nyX/K44P/QbhIQENGEe38l5vKrMp7wkttwy2cpkHxv8iEc+Q2LM
         wHU09IYsLxMAN2BlYkbcLOt0ARm5LV0+HM7YWG30kMWtqpvfrKCWM+XqOgJjxrU36CA1
         2MGRji6Abi560y97BRtMg6DiE3Z+JycmYf2tRuULmMHvv8vZX+665DH9nocop6D8T3ur
         LjpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :reply-to:mime-version:sender:dkim-signature:dkim-signature;
        bh=dDthEZ9ZlLmaakzYOxVCSZl2fEQ4CVw+fhttwrDrxDA=;
        b=M3SZETWb+wKOXzhK1K49f8QTZu0FGJLFpZa+RjrlFwnE+0AVBh6W3VzbeIpCIi4oEK
         KFcQfG8bjDUiC7ar7yCqvuA7xIbInSF9pJBzfBRd0E9xHcnaJEb09Z5JBjwxZrh96c2q
         Qut1BvBJ/gHewut8ULrbsbpI93JE/FSDB/GTc+L1JaurEUL7px2BPk+PA4Q5Li+QUMw/
         4e3nagnwEPE1YVoE4V6wn7PQqB5+15NEvGKMsU2BIHLwfCHyw+YijTYc30hJeHpWeuw4
         mwccYjF+EocA8zFtkZby4P1NZ5u6ly7q8NyoCHpScHo1XKLXH8bfDh1DCDYi1pFH8ulw
         9KtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fcIUvXJT;
       spf=pass (google.com: domain of bariskims@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=bariskims@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dDthEZ9ZlLmaakzYOxVCSZl2fEQ4CVw+fhttwrDrxDA=;
        b=riwPuT2B06tRkIYVZm1cEKofkgFGHC206sS1wqPqeYT9S+Ox08DI93o+WB9JdLRa0+
         r2PAiFB61WrHzSEpZtjp2m9UyW0/isXFcou66viBdYxvUoIS3g99bYZVxyIexhoBmdkA
         o5R2DwAxIbxoPhPAjDqO9bMj4KJTcRPScE9DDK60P3pKrSKyCZtfVgoifgJqVu2WOleb
         pMdumwQnhyp/Zv3aaWB6jNqKHTpYsDRB80YdQ5Tv7WlDWNf0q/GCQ/sdddN8ClKhaS0W
         YsGWH77crMNtb/SFRQLmpOm3UWrEi9tHH05SOkw82ARjRLqnVpc12mKJGx5n92x4sX95
         C0zw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dDthEZ9ZlLmaakzYOxVCSZl2fEQ4CVw+fhttwrDrxDA=;
        b=gKfjW1iLZfrHB8/KvidYLNrf+b+jOfdgBP63Ed/KKiLxxiuptk8LGFn91MJdVnNKql
         SzXhNvWckob1Lw3Pz7GUr02+z9LVn3CKORkireCxdTrtp5+Ii/DLMoJZVDbYIzhq9M5x
         cNiKhEWTF2UE6SuLepOVziue5glFuLxaM9ZIl+n+RPwSC8Y8+RvpGTdtwU7gBMxlf353
         8gzInYrEvs8camPN6W/u83o0kE0PJaxqiDL9uZMl3+dka66PnhAqifC157udjkuy156Y
         IizEbg718uJGSUy/+t0/aZC5XOqthSWbAr2TYJO7VfoUz0qmwRmqKihS9G6gBNcLtijL
         OdiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:reply-to:from:date
         :message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dDthEZ9ZlLmaakzYOxVCSZl2fEQ4CVw+fhttwrDrxDA=;
        b=mZjudYiLTlQ8leNcvEE7VCWAb75m+0BS83ooNXuai8D5+88reVI0wpLILFS5bApFFH
         G3ObQ+QYrh9ooj0pDtVLelMRSj+mLGWzdCQg97T16bvPSF1XCGeA36RZ8qC4Lb9BnHfT
         2d71ygHr+XA0VGG480Y9u0OIAdUPAlEjDxd+o3caxrIlE7zn0GMi2hGyiunAXt5FEYGd
         5xuxz7PTp5nzi0JDy0p6CyzRLehugiALuzqEW+sb7JqVb6zzko3mE58E1aTX1S6LBtpI
         O7YP+Rcs9tq8UzNROBYjzTIO3BQY5vD0cUV8nlwFym2A1fIxY+eHwA1t46o16salBtcc
         YYnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53017WZpcFn4FXNQqU4gJUdFdaSpQ3Valj9prnlVtyiOuI7bcf52
	ZyyuHKZplffJfUhjJd5JoJg=
X-Google-Smtp-Source: ABdhPJzz7pXhiWt7Sa26Koirba4hRrFiBVaUffYVVFsRFSljiHxGHtByXhmJiDgeI7IHRYJdebJc8A==
X-Received: by 2002:aca:1308:: with SMTP id e8mr14984288oii.119.1592912961128;
        Tue, 23 Jun 2020 04:49:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4549:: with SMTP id p9ls4316706oti.11.gmail; Tue, 23 Jun
 2020 04:49:20 -0700 (PDT)
X-Received: by 2002:a9d:7ccb:: with SMTP id r11mr19091123otn.209.1592912960863;
        Tue, 23 Jun 2020 04:49:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592912960; cv=none;
        d=google.com; s=arc-20160816;
        b=V4nm3PO+Pj1WVR2XyjcAFYHs9e7LSwgY4xHNDgvX7c4uVmcglrz8OUKxQqjZ57BXyY
         Swy5oQduzJXf9B4DEJGi9bDm3tiZQ7PjUobdpew7veaC4xphLeaQSLvjzti3c0wpNPaK
         WaTYb7trOMkW8SeP/iXVAkIcGF/xcJO/2AduZkzANIgnV+kKPC4UBFUydLruynWFYV3J
         AHRqkUcSYcVJElsvv5xCQP5eHMUb1WJgDDpR1orSHs1ElKx8lsH1GDNO31L3QvNXs4z5
         YZKHLi4GifQLMjvuzl8V/MEWyvVRxvFKDt2QMnQSpPz1j7CHFdnxzKChX/oX3dszALNA
         BMoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:reply-to:mime-version
         :dkim-signature;
        bh=7fNnQnFssZCc2Jtw2cUlJB4v7zrpRiQS682aXMZO9+Q=;
        b=yhpYUnXDG5g31Q6Wggytfpo8XjtJ6Q3B3GJM2gBDDCn38UPEsKK5gqwfhqOPPx7s0G
         Z9xuKYDOjLkGCeynbtmYk9fJOO0Aqk3YYR1uTOb4BSwHv13BNYmztWihuE//hSiKgaM8
         1qqbxKsqljqYdPgQMOM027uaOxvYI+YBOLpIn17RINRwpkeRPDdFnWTdc+zl5SN5oEbF
         76KKB5PIv8c+g+ZpVbeQeFBMRNRtUwaJXed4XZxhcwITj79uWfWoc+y8ydr8Q3pFX0CQ
         vhkG15x2LCodX3PLCpx2eJMkoXAGGwVVeVSvwhn51p5MFkjbmllm3xO0D+l9xiQS7KsR
         wv9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fcIUvXJT;
       spf=pass (google.com: domain of bariskims@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=bariskims@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id k69si999283oih.3.2020.06.23.04.49.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 04:49:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of bariskims@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id i25so23340635iog.0
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 04:49:20 -0700 (PDT)
X-Received: by 2002:a02:3501:: with SMTP id k1mr23175545jaa.133.1592912959134;
 Tue, 23 Jun 2020 04:49:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a92:290e:0:0:0:0:0 with HTTP; Tue, 23 Jun 2020 04:49:18
 -0700 (PDT)
Reply-To: bektery@outlook.com
From: YAVUZ BEKTER <bariskims@gmail.com>
Date: Tue, 23 Jun 2020 04:49:18 -0700
Message-ID: <CAC21a+rN8M94jHTGd5YZCk_=o-MCfkr9aRzcCYAWReAqMz91TA@mail.gmail.com>
Subject: Hello.
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: bariskims@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fcIUvXJT;       spf=pass
 (google.com: domain of bariskims@gmail.com designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=bariskims@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

I am the foreign operations director of Bank of Turkey.
My name is Mr, Yavuz. I have a sensitive investment project to discuss
with you, please reply now.
________________________
Ik ben de directeur buitenlandse activiteiten van de Bank of Turkey.
Mijn naam is meneer Yavuz. Ik moet een gevoelig investeringsproject bespreken
met u, antwoord dan nu.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAC21a%2BrN8M94jHTGd5YZCk_%3Do-MCfkr9aRzcCYAWReAqMz91TA%40mail.gmail.com.
