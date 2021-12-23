Return-Path: <clang-built-linux+bncBCD25ZON6EPBBOEYSGHAMGQEZ5UINEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D01C047E12C
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Dec 2021 11:15:21 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id g14-20020a92c7ce000000b002b1e78da1f9sf2822185ilk.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Dec 2021 02:15:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640254520; cv=pass;
        d=google.com; s=arc-20160816;
        b=xUzjLGFAU4En7/+aStUzfDxhZWT9eCd2HNkY00ragarDVnA+JmjkxLF0LrJrz6v5Gd
         pxbqFclZXr6r+ltCt3EGGNNvTIYznITY8TjK7iTW8sXWL7DetNMvfO11v3mAqUckGAa/
         9OSd1E1ep6zY02oM+bdLrWrXpwGV/PbUFFt48KGzArVfsKnpZFi9SRIuJPFAPEjvL2RO
         PCx+0r5Hc9nLwLl1Ag+tS5XM69/3M00oN85Vjp0BjyFvqQwI5cfp4LnJnjo1cpcl2mmO
         sX+nZYwzcA1EBMnhILvL+2oKDtwEHfAaJVVLxQUwzaY8HPSaA7kLsWYjgA2vmbSTIp/d
         9nPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:to
         :subject:message-id:date:from:references:in-reply-to:sender
         :mime-version:dkim-signature;
        bh=q1+RqaiuNTpXRS/T5UN+fvZkH9oMpmNQKwWbPwy9P3c=;
        b=m36LI/4a4ylKXvZuk5pqT/BIrBK9jNi9OHJ0zNLwldxk3fucbAYjNIaO+Lox7nHh32
         pftrXEZ9NNUC51o6q6M/XESxyGWFAuDxt7XnLGoZVMjCx9j0auOPnESG+tW5lrbxVXNj
         TiIQ5eyodap/W5xshcAasT/OSm3nRWsNhXGEgxu5OejYKjFtPbN6mXetuxGkdqzr94pN
         80LRfoTkzeWVHd2F//bN0kUrX0YPtBukaWzN3xP1Dnjb7oF0SjCtpXC3vG6S5yCO6+Ib
         Rnc/11jskpL5UNjrbYn6QANe40Bh39RcSEAWKC8lmw3u6kH4oR7eM96G22WU+Q3o5xFR
         0XIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=F2iFtabD;
       spf=pass (google.com: domain of mohameddjibo363@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=mohameddjibo363@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q1+RqaiuNTpXRS/T5UN+fvZkH9oMpmNQKwWbPwy9P3c=;
        b=A0RM3fYIQcKqKnaYcuwRUL2J8jA4sB5Q27uWQpK1kEyqt6Dmazxpclqn1XTGGfFBMT
         uLRCBulKQdjBU33hYC0+pINNbhJnc92B+6AlzuFtbw3hTFf+YwIqHKqtFmG0/2c/1eOk
         7CDoOorp0nvcyf0CpUt302rGEmoWqA9B7oxBGnQkWygCZkkv/DQue29LbvZoQxppWDck
         iobzLBNtgYmE2wVBbHJLP/dP/lB3KYkL+wwD+b+XwoOFwBZ+DJxOXsGvXetVP9MLAy6i
         LX3Ndepi7zjMOYMrBc2sbU2BK34L3B9jWCTjkZ4oZZxm5LpKvUGIiDiQ5DaAhB2M9yJK
         ORMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q1+RqaiuNTpXRS/T5UN+fvZkH9oMpmNQKwWbPwy9P3c=;
        b=cunmMCCg+Bz8uK00mGIC7flHVJnLrZOzL8eB2uNIx/DDZpjGKuaxsVIyHFAnM3o3Om
         LF2OfXoGI8XLWgNWha//5YHTq3j9oVR9p7qKppvx0QsBMSGvEg3oLnPuOypTBFPh49IH
         by1mHDW71b3UKTRyVk6Ywn3VKGsP4H8ObGU9iFWLCqr91iRikkNmAg6RoauP19ojNGbA
         K8SYSfx8okqMcOfNlojaPeCXKTJk/XGKWcV8wU+4Y7vViHJAiGbhKtuE6P/ctapXQ3FI
         kw4pWPGKdDQkYWNUGSKYdf+zclLtX6+DhA4cBcpbyurCX8GPeI0aTE2HxH/go31crKvE
         Kzsw==
X-Gm-Message-State: AOAM531AYHx8sfTH3kjx1x9eMASh/tSU+kZUzTiViFep1rKg6DU7AOq3
	yXt7bZuZOlvqfMMQ2ka6Dvg=
X-Google-Smtp-Source: ABdhPJzUI53orEgPiBBKHxhmMPEomWwLr1Se838ltXfU/lbk8BfKaFNbP4UJV0Phnf3M+CT8Q9iRvQ==
X-Received: by 2002:a05:6602:3c2:: with SMTP id g2mr791561iov.65.1640254520491;
        Thu, 23 Dec 2021 02:15:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:da:: with SMTP id z26ls494818ioe.3.gmail; Thu, 23
 Dec 2021 02:15:20 -0800 (PST)
X-Received: by 2002:a5d:818a:: with SMTP id u10mr746147ion.140.1640254520086;
        Thu, 23 Dec 2021 02:15:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640254520; cv=none;
        d=google.com; s=arc-20160816;
        b=k+KUCBnfnaxXW5kf9+ds38M7pWiXL1mHnsx1/9ujZ8GKjqcI73dHGg+8lsJqw9yRvh
         7E6NQ2c/agh0VgMum8l6cQl59ukeE6KRvnZsgIUm69vlodch9Ipyp88H30UYAKhCwDZt
         FY/ZAyaz/m8cfG7I3HT6Sy3CSM3BNJclCVGmcGBvJySpstgzAxzRyZjfRAjTcbbKzud1
         sddJiqVdeUIeVRvbtKy0Sx8xH4D2IAYgboxbl7NhoCdxbKQXXLGab5LEljbE1ubrFef5
         eyUPv2ellLZSJ6F8wxZ3Cd17mR9G3H1WjnEmzjGpJmyh6mZhP7naAbkcDu4xdXbPfVnS
         /xxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :references:in-reply-to:sender:mime-version:dkim-signature;
        bh=WHOhD0vfbpW2mxOuX/ZSu0GT+AI3C/oXcOue0WpYD8Y=;
        b=Vng1PnSaTg15ELMCtgxFJpK35ynvoLhCnuX2ZUMbfCqf8iV1JIPFdMMkkjYH26jK58
         /1djuXsCxTkCqWv+r0zFBk4n6JTB0O8r2qouvbGAlWBz9iF5oX0OixFrTLPsgv7t0EyZ
         TKRCVgUC0pMLAH97ByV05NznkWWBN9ijgo+Mq4vZOIxVRQj0yf/GUHDlsDEZzSujgvgk
         znDspNMvDP6YK4uh5Mv6g641M9wFOdnjr29D/+72TmTFhnjDZIxE7QzTDOvrGnFyPPZN
         oSY6K2IAFLQxSgFhMF0jf7/jB+zXXIcP9oIfjKdjRvw8FY/Tq6d/R4eP+dZs5fxa/AHx
         ttYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=F2iFtabD;
       spf=pass (google.com: domain of mohameddjibo363@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=mohameddjibo363@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com. [2607:f8b0:4864:20::b35])
        by gmr-mx.google.com with ESMTPS id 8926c6da1cb9f-2faa6b53fc4si359140173.5.2021.12.23.02.15.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Dec 2021 02:15:20 -0800 (PST)
Received-SPF: pass (google.com: domain of mohameddjibo363@gmail.com designates 2607:f8b0:4864:20::b35 as permitted sender) client-ip=2607:f8b0:4864:20::b35;
Received: by mail-yb1-xb35.google.com with SMTP id j2so14892700ybg.9
        for <clang-built-linux@googlegroups.com>; Thu, 23 Dec 2021 02:15:20 -0800 (PST)
X-Received: by 2002:a25:c54f:: with SMTP id v76mr2362019ybe.212.1640254519865;
 Thu, 23 Dec 2021 02:15:19 -0800 (PST)
MIME-Version: 1.0
Sender: mohameddjibo363@gmail.com
Received: by 2002:a05:7000:5c53:0:0:0:0 with HTTP; Thu, 23 Dec 2021 02:15:19
 -0800 (PST)
In-Reply-To: <CAFu14Dv78sPNupqTm_NE0csPk-2ax-LE6bZFJ8R6FXG69uYh8Q@mail.gmail.com>
References: <CAFu14Dv78sPNupqTm_NE0csPk-2ax-LE6bZFJ8R6FXG69uYh8Q@mail.gmail.com>
From: camille <camillejackson021@gmail.com>
Date: Thu, 23 Dec 2021 10:15:19 +0000
Message-ID: <CAFu14DtYoE+dqXZKH811QN6_2d1_dQjV4pXx58D-EVHe9D=VRA@mail.gmail.com>
Subject: =?UTF-8?B?4LiX4Li14LmI4Lij4Lix4LiB?=
To: undisclosed-recipients:;
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
X-Original-Sender: camillejackson021@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20210112 header.b=F2iFtabD;       spf=pass
 (google.com: domain of mohameddjibo363@gmail.com designates
 2607:f8b0:4864:20::b35 as permitted sender) smtp.mailfrom=mohameddjibo363@gmail.com;
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

4Lin4Lix4LiZ4LiZ4Li14LmJ4LiE4Li44LiT4LmA4Lib4LmH4LiZ4Lit4Lii4LmI4Liy4LiH4LmE
4Lij4Lia4LmJ4Liy4LiHIOC4ieC4seC4meC4q+C4p+C4seC4h+C4p+C5iOC4suC4hOC4uOC4k+C4
quC4muC4suC4ouC4lOC4tSDguYLguJvguKPguJTguJXguK3guJrguIHguKXguLHguJrguIkNCg0K
LS0gCllvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQg
dG8gdGhlIEdvb2dsZSBHcm91cHMgIkNsYW5nIEJ1aWx0IExpbnV4IiBncm91cC4KVG8gdW5zdWJz
Y3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9wIHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwg
c2VuZCBhbiBlbWFpbCB0byBjbGFuZy1idWlsdC1saW51eCt1bnN1YnNjcmliZUBnb29nbGVncm91
cHMuY29tLgpUbyB2aWV3IHRoaXMgZGlzY3Vzc2lvbiBvbiB0aGUgd2ViIHZpc2l0IGh0dHBzOi8v
Z3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9jbGFuZy1idWlsdC1saW51eC9DQUZ1MTREdFlvRSUy
QmRxWFpLSDgxMVFONl8yZDFfZFFqVjRwWHg1OEQtRVZIZTlEJTNEVlJBJTQwbWFpbC5nbWFpbC5j
b20uCg==
