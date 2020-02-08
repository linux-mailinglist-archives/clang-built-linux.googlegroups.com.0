Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBWGC7HYQKGQEXVEXACY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 068CA156349
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Feb 2020 08:20:58 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id q13sf1051777otm.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 Feb 2020 23:20:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581146457; cv=pass;
        d=google.com; s=arc-20160816;
        b=UJDPlzzt5m7sSPg26SscffT9inWVa8zqfv327mThoY/BYOLy15KIMfcsred5K1M7Sv
         kukcYqQF1qFctXpjX4LxwHRg0T0F8AdMEWTVjx5TUmbKPjrGiHJvXOAWSfWegcqDzDTH
         BeXZhmsTcQbYakuljpATZ/qcX9sR+zKAHcxmTLlaP/2ttL7rZ7ZIXxjOCPijGVdnthSG
         4QHdKkIsERd8VFjbriYfm2AxaSPcTYfxyuZ9tWLedoqcReWnLKhtV2VWscXBymzpeMtQ
         qeBXygsA2OIOou1ylauJcNJJX25ByLomUBGrtlSFHjg71e866BYlAuyEBUZOw7GO57OX
         KX3g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=dpkk7zyFgiVwgzJjSecztYGn7A3VN+BknADHm/T4Rbo=;
        b=MJPuC6BIHihbMnH6VYpooL4e4NfN7GNVUCaG8D5MuJAYWPXcDsqHL0UldzXJR8YFWc
         7HZKzaMuz6kvoT1ld+U+s0xAp017ARMbtwRAADVwWd93lYlqti4bKfR1nWNgFlngKzJG
         Xt5DorhmOUIgGb3zvh9ZVguEKZcPRVOZCReHIoUskSzjE80QXafoZDkzdfyNpdJIpBnL
         dTT6Fvdq7dBLRf+s+LsihuVWhxBYnCe778+cnd1K3MqEwDeTYduWQ7z1hPlqI0AwV8lH
         YpQGM6T26vjYDvPa+V4+WtDJy/QCzqVOQQW3qV6IOQo4CFMtCbhx5acbEBWuxBvZzuY1
         fyvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vYyIemiw;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dpkk7zyFgiVwgzJjSecztYGn7A3VN+BknADHm/T4Rbo=;
        b=R5R1Joog7Dng4y/ppoT7K55GlKEwyqwo6bJORp5VXgACaJc0Zaxdh5N51c2nStJF/G
         EJ6rTPSAMS+HnrBwV/NYMFZIRy8lYd7T3mtV7gqBNZON+u4Bb5qndHXZW3/+XPIFmOCM
         2IkbWvCTw6l6u1lSWvXhmahNjn4V77FFeF8m+ZFkV7B/m4txg+IlBQOG0PJE6zgKaT1G
         qCAzvx6b9KSifBCZQG+wqN+si9m0FTmL+EmQQW8VRxyYDpAoD2P8WK67jWF1d1XpIm69
         j+PYnTYt9FHA9EkoRO10E1Qn61UyULZh/Gm6kDL1uvzeccntc1h7wYK+aP97Q9DEtnIJ
         CsvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dpkk7zyFgiVwgzJjSecztYGn7A3VN+BknADHm/T4Rbo=;
        b=eMFJntSSx9TTPaWMddRe6TPiLbip/E/pJhmm7se5ZB6L/OGsuTfv82YAoaJULQeYKE
         GguLORMFqDqKLF8KSdy4izECmcFI8nM+p8HHUmBeiiEYQZf/Xjf2Q7hxPmFhhH6p3dXR
         lW68vJR/Ja2K8gBVGcTd2Cy0hIYGkyWXoN49a0wHsg8YOPrMAKUuz9sGxNFwK+JoNG+g
         RyMB7JTBvbDeGh9vqYYtKOrFr8u9IqgZllx6jUAZx08EPGZU1tI4dwmScQlNgETTSnDZ
         /GCAl7ne0uduJCkmMDuW9GFFjIC10GF2a/fOUfV/aobM2cikZpAZbPOtpYJWPok/DqpQ
         FQNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dpkk7zyFgiVwgzJjSecztYGn7A3VN+BknADHm/T4Rbo=;
        b=G5WFh6JEhnKdCKsl69l3WtWethBR9N6UTJi34vR/9qiti/WrA4Z5DWOWhV2R53Kuek
         oUGZ7kcvs91oUSi8g5VRUYsm9Q3M9qnOZ7caKGMVjTM8dKZSV1s9hp+AtxR407ZLFKun
         /VtshNodx9vzqLH5VO5IMSL/Dkkvp4gtKulz5f70YJ2UvgmcNQsKKsscBH5LCbKZmKa7
         GcfEa9Y4xTOEAw+GO6fHbvVVZ9nzz9pJgkNSSN6jWWxUVRSoWznMdXhJGbGoKjaVQz2z
         v2Jpf1XnohAHcd2YyDsDVDiJG024vCCtBjePVRrqGnz+Jvhz4VYszCLUhF3yQ1awRyOE
         HMhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmm7IKnVCsn3WQjw13/rdEsJfyC7TzgUbDJVfPYQ7PiconZbZp
	THM1c2wznroZ3eWtxHiBPLs=
X-Google-Smtp-Source: APXvYqwpfbaP/x23gYv6EmLdxPOwsrUdVcNglN+vgmhCuydgNtwiASV+VLWxEst19PjcWxz1v6fsPQ==
X-Received: by 2002:a9d:66ca:: with SMTP id t10mr2464115otm.352.1581146456984;
        Fri, 07 Feb 2020 23:20:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a01:: with SMTP id g1ls436212otn.6.gmail; Fri, 07 Feb
 2020 23:20:56 -0800 (PST)
X-Received: by 2002:a05:6830:1289:: with SMTP id z9mr2577800otp.317.1581146456620;
        Fri, 07 Feb 2020 23:20:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581146456; cv=none;
        d=google.com; s=arc-20160816;
        b=yDtRqtD5xgL3JJk/wLhRrFyjAJSvLosYmQC6ia12ZFSWN4X+F7QUND0AK81zprScwp
         th89ZdrtSDlIChAwswSWRoexADAsKZCWNV5hPSOoazbKzuICYY1qW/hc87U69b4Ac9Zz
         BrZSnMF9x+UJ0N5UL8O2Bcb4KcSVuxjx65/B7X8W7c/LZI9maQnIiTw7IxHSxZsRrIi0
         m8bB813lhncxyXa+Yi+41pb/auu/04icjSi86bilpRLrWOJWgLvpqeMm5puQiDeSksIp
         ZUwF3U/MwwMGHKE/NMJyeNr0CaWsbMODdkXRcMsQZp7HfvOqG0RGPy/QiD5BtIVeuo1B
         uJ+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=va7RxIIlPr44TDbXNX5b+8jhFzF0Q9LvNOFuGclOlBw=;
        b=0OT9k968F0Un09z7YB/2lkFplB1I+swlezvxTl00cFjmcT9IjVcVoENPi/lRpjzfXB
         ntPxJuDtv9Tn443ugR+GR0IGKZLACtiEtisv+9CFCsWkaGLI11kM6I4HU/zx3FqG6Hef
         bxX0HW2Y9KXLZlIXoq2ydT1bLpeyf+ACqj3qs4sHd5y8F6Atp8SiFV2KYoTP0vZzxUiS
         PQFmYTQoGXBVLNCMys2PPQ3A6lCD/rHk0lNzpZ+J5UrDeLUpwFnV+okbiDbWI9omNnOR
         zkLUSKsOAmcuHyEVYC/AILHgGSWBK//M45OxUSJwQfu1waRsK5qPBTJurBymZ+aob5MN
         KcSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vYyIemiw;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com. [2607:f8b0:4864:20::129])
        by gmr-mx.google.com with ESMTPS id o11si106991otk.0.2020.02.07.23.20.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2020 23:20:56 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::129 as permitted sender) client-ip=2607:f8b0:4864:20::129;
Received: by mail-il1-x129.google.com with SMTP id b15so1556650iln.3
        for <clang-built-linux@googlegroups.com>; Fri, 07 Feb 2020 23:20:56 -0800 (PST)
X-Received: by 2002:a92:85c1:: with SMTP id f184mr3112243ilh.221.1581146456183;
 Fri, 07 Feb 2020 23:20:56 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdkce7dotTyVQcpcqH44cxLWPHgwqTXz0Zv5nCmmnkbeiQ@mail.gmail.com>
In-Reply-To: <CAKwvOdkce7dotTyVQcpcqH44cxLWPHgwqTXz0Zv5nCmmnkbeiQ@mail.gmail.com>
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Date: Sat, 8 Feb 2020 08:20:45 +0100
Message-ID: <CAKXUXMzuwZv8EP9+iL5uM3TNDGaL5=5dx+WnM1xSzuCfHkN6Yw@mail.gmail.com>
Subject: Slides on Applying Clang Thread Safety Analysis to the Linux Kernel
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vYyIemiw;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2607:f8b0:4864:20::129
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
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

https://drive.google.com/file/d/1vU1hK80SZrAKLw7AqsOuZx8kEUafj9jZ/view?usp=sharing


Lukas

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKXUXMzuwZv8EP9%2BiL5uM3TNDGaL5%3D5dx%2BWnM1xSzuCfHkN6Yw%40mail.gmail.com.
