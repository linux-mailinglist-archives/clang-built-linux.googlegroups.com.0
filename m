Return-Path: <clang-built-linux+bncBDYJPJO25UGBBINWUCBAMGQEQKJ5CYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D97233329D
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 02:04:34 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id s10sf7229174wre.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 17:04:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615338273; cv=pass;
        d=google.com; s=arc-20160816;
        b=O/vXSG1Cd3nqWnHB8Gd5rFpdpQNddvGO9apAkkSq0y0wsyZCClcR7EDzpP7zmxW0TU
         mRiyuU6npDKnTue244KtIBsQ8d56GJ9rlTkDo0KiiGx0l8vJe1bDAd6qjnivvBJYyf4K
         tHs63EmIj0ThtDRooIP7PD5fiKUV8VBY/DgtaoIllnDGnlYyel2/V2I+IJXPq/+1kIWb
         ctm1X6oBfSKTPyk4bJhhjmzoVjKIhpXSI0/Lx8tXW0oXCvqYOPFIEHyKffnKKEO7Oo2N
         Njb3Xbn/MAm7YWBHBH+GCZw6x/WLifjlvEfkYkhz3IH2Y8TqxkP3+PC6P1lrJHslR1Dc
         RwMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7TvDeionpU/sA0Uc/YsQwssZnLnvrdpk43en7b7xyFw=;
        b=f2uxBDaaqlKjNRVcTpFsq7PBC1692Hf3SmxVrqTD9c0bLX0Uh9bKOCnllehHIWcrwl
         86EwLtkCiJDXYnNjJ3MfkDjS+K+i440AyES9N6xishjSIV5WH4zMjiGi9sxU2UUeoRiH
         kPDSNJpraEre7e4ptLieJal9bjYBKlkJZ7mmI/0u19Ch4pKqV++gkK/fm1APAg3NjPUR
         529Irz2ShE+CQPqK7QyLxzAeDD8VAyvVZh7+E0kR6l4HQH/A7ji3ETMkM1jDiejabs4O
         n7p08HoBr+hwL40eNjZxRNWSNAqyC5rtlhn84ogs0oSQDtYoQYnoLsnMNoKw2jEo1u/J
         1L8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BU8ROLai;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=7TvDeionpU/sA0Uc/YsQwssZnLnvrdpk43en7b7xyFw=;
        b=tLf1/AanXDZzyueMbV8xq1TH9+6g8YIzFYTqXQ0rd6t1dkHtY5kPeit28QHiG53vzC
         gyM8NLFzZpBW0k70Be4HdGNeJzxIMK0mCf+lPQNE0BX8+UmupExUCcS0pCJ4oJDOVYGy
         RyYHWHcvpAuFfq6bD7hXXwE+1VRsJCPAYjmBI0d1nnYrRqowItGmI3l9gkp59TX70hKQ
         4YI2pUkbiBmQGqfYs+tOZ95ayEQtldmBw22Hm2egHRDtfGmbCcoMv4ZQndFlFWFq/uCi
         vEb0WONKYuG+9Qkds13IvtU0Y5GyaJGVKKvU+Q8rvPsnVF+GFhF9QOCvw1SVnslHGGbE
         HzQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7TvDeionpU/sA0Uc/YsQwssZnLnvrdpk43en7b7xyFw=;
        b=rJdGhpczIvfoSC+5WWAMWftyULVVoJZkjMt7maaXWqSfH5BSk5PJlY0G4jH3f/VM5C
         9XfTEXXBjxPPJzK4uRbsbxsnGN9Q26IrAZ+BQqDrGjC0iBoEZl/yanqMsAsLYP+cJfGJ
         ZdLjnQCClJfyqTZVtQ48qeedBZlPrRivX9li2nRVdPhWZi4xfxhuNEZaSdVpyzxWLNcC
         0wWX05jeUlIh/n8A0VvgFhJnPJK2C+ljWj+eZxgoaahIKyiGBzXv0Md2e4QcYeJ1SwLA
         IHvcTdHhx5j6CWSu2uOx+z6gZJ+SGMEdpu452BHIN0ndSnwscIwbdL4ylLyHr0LV0TUV
         mOXQ==
X-Gm-Message-State: AOAM531Htmt+1Undbl1ZBGzHYzr1oMj5NJH7QSvetKNlGGC41fKbWO1A
	EF3P1/sd5CACTFthWgpM7t4=
X-Google-Smtp-Source: ABdhPJzBziHp6/zglFmZsbE1sjr2XqZ3LDctW43sNjGhcpVVbOFBhgYjCuyV0elzxeL40zxnHWUHjw==
X-Received: by 2002:a7b:c442:: with SMTP id l2mr599650wmi.34.1615338273850;
        Tue, 09 Mar 2021 17:04:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6a89:: with SMTP id s9ls517864wru.2.gmail; Tue, 09 Mar
 2021 17:04:33 -0800 (PST)
X-Received: by 2002:adf:d0c9:: with SMTP id z9mr619854wrh.396.1615338272960;
        Tue, 09 Mar 2021 17:04:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615338272; cv=none;
        d=google.com; s=arc-20160816;
        b=zAk8C7f/ohZ1dfmqnIixcY7xu7tOyu15ESSeTEGMK5f4lHoKU8B42aDn0prmhhTsqa
         2l7bnnJIIZmygOXG7RB6yalDa8vxaBDak0gU+UrEthNw5wBfPi0JQXSSbxle276UV8GF
         yq2j78nD1VbWC2/3hMSFqlRa4DJjvGLTvo+keNyIbD5G0u91r0OrL2apHBmWygvy4uYT
         de5TVA+4YjKxTNJCuPeUFKCyw+6GudLh8acL/+8GTgGxLw061spH6quc8K3IoE7IMy0H
         LSCcJ9UgNS8OIPCqvJX+BQ8+xh7XRGBLULobN8O2NvlUNozdQU7OJ/vJVmRIA5SBSqqi
         gxLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pLY0zeRjkzQQmJ9ghQzTusjqoWiWjS14utUcv66PLPI=;
        b=eEE02KccMi2v+VGE1yIOgrqf8r03vVUwJ272HA2iEN545o7am5H2W8eGt0VPM82Tlj
         cvnm/RgOAjlJWJFghiWxb4NBBt1JQjvPvoZ+SsLRmyvyQWT6MGrPW9iz33OoJC5S7E7a
         Uy6nUIypDJodiv4nox2P8O/M+UJuNrxNVke9xpGzGzkkRcE/14i/ymPZPvRCKoZpCjb2
         BGcgk3pSGWqnkgVbcW5KcnwWYWNr6mGBYFFdGtn1TpwFmLDuyD4QaPC7GVlMwX4y04s5
         qXIdQBlbLbQMMlHmooYWfVBX8n/XeG/IaESgqy/grROWG0f1fNPIUetkuhqMLoCCyuhk
         Wzcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BU8ROLai;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com. [2a00:1450:4864:20::135])
        by gmr-mx.google.com with ESMTPS id s1si595744wru.4.2021.03.09.17.04.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Mar 2021 17:04:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135 as permitted sender) client-ip=2a00:1450:4864:20::135;
Received: by mail-lf1-x135.google.com with SMTP id u4so30567788lfs.0
        for <clang-built-linux@googlegroups.com>; Tue, 09 Mar 2021 17:04:32 -0800 (PST)
X-Received: by 2002:a19:5055:: with SMTP id z21mr436910lfj.297.1615338272517;
 Tue, 09 Mar 2021 17:04:32 -0800 (PST)
MIME-Version: 1.0
References: <CAGG=3QXktM25pby2H9hQMNYWS2kecmmSvPJa6xVf-kXVefKN5Q@mail.gmail.com>
In-Reply-To: <CAGG=3QXktM25pby2H9hQMNYWS2kecmmSvPJa6xVf-kXVefKN5Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 9 Mar 2021 17:04:20 -0800
Message-ID: <CAKwvOd=dy+_=b6z4L6GXmdFGeqPHcsZaNvgWr8_rL0JMd4D3pA@mail.gmail.com>
Subject: Re: News: Delayed Meet-Up
To: Bill Wendling <morbo@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BU8ROLai;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::135
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

Moving our internal list to BCC since external posts might bounce.

On Tue, Mar 9, 2021 at 4:04 PM 'Bill Wendling' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Hey!
>
> All y'all might be wondering why there hasn't been any news with regards =
to the Clang-Built Linux Meet Up. That's because...there isn't any. :-( The=
 COVID-19 restrictions means that we can't meet in person, which for me is =
the main reason to have a meet-up. (Sharing beer is a close second.) Now th=
at there's a vaccine available, there's hope that the restrictions will be =
relaxed enough so that we can meet in the near future. I'll send out update=
s once things change. I *hope* it can happen this year still.
>
> Please respond with any suggestions and/or comments you might have!

I really enjoyed the 2020 meetup in Zurich, and would love to do
another.  I felt that it really brought us together for a good couple
of days to collaborate and best of all meet!  There's a lot more folks
I'd like to invite, and actually do swag.  I definitely won't travel
until vaccinated, so timing that works for everyone will be key to
establish.

Here's photos from our 2020 meetup!
https://photos.app.goo.gl/wUsYPjGJNoN5M5kX8
--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOd%3Ddy%2B_%3Db6z4L6GXmdFGeqPHcsZaNvgWr8_rL0JMd4D3pA=
%40mail.gmail.com.
