Return-Path: <clang-built-linux+bncBAABBIM34PVQKGQEH2ZPC5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E42AFA71
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 12:34:11 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id w126sf14088222pfd.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 03:34:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568198050; cv=pass;
        d=google.com; s=arc-20160816;
        b=HP+2CqMDT0YygGXwxSH8O5VmldXD+LZMvDMhpE3ArBj5TpmGnoEjR/cfm6zo4onWxc
         GCM2RnvNmG+M2XcDJUnUAeIi/91Shk+ZJvRnpg5cbVZN/3j96hmej5zF+ZpNvWpZJ3k8
         liyrNVZL/d2RX1pn2MR2s1K/kus79UQU9dmArB3mndlYlbGStexDs24K/w5i6V3TlJ9B
         FYJApq5N1+KaEGD34bBEoGRy9HojPtwF1Ke47Jk8i/4hR4vjn2eqVTDajBFKgri/zx3X
         JVmQ9/oQVuySl0QwPePkBwyMs2l/B64y0fm6Nk0iizahS77h5IyadmQ4KsQTxgLdPw8y
         ktvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:user-agent:subject
         :from:to:cc:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=+kA1qSzxQXIu4fw2GoA8MlImKzV+Bj5Z1kPIUMG150g=;
        b=VnkWUhG8vNmNsrGMitzJUxWi7shuuVBpSp1SURlLKXnoLX/xwYpFEF1r6fvlM5+6cy
         VjfloQ43e57wGJPIw+FaW+C21ZkrFti4fzDIfwd0E6Bsw0Z/kCAjMa6Kxrmu/3n/CEBB
         zm2KirQWxL/JHcM9s+VPfOx2ivqTjSU5Hav0itzucjW/7EsJdwm9UCViw9/D/ice76T2
         QhXHRWLa4PS8CU9/jLa3b5bhyPQOD33HdgadGgBgLYUnWKW0gXFpnnc72a6Qfch1ycnN
         TsbYxXyS3/A3gbbBMPIdVQRH1cwbv2X4cc9obmxAnN+2najjKguSmBdjIrdYwpF20KfO
         j14A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jS57VgcO;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:cc:to:from:subject
         :user-agent:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+kA1qSzxQXIu4fw2GoA8MlImKzV+Bj5Z1kPIUMG150g=;
        b=oC/ab7b5Ku1MsIs1RTh1wq8EESRFNV9sUMNBlbbCUpeq/Po3oLPELjBYWY/pOjpq71
         DTst5cyTcKhSkP/wcpDmy3SXSLHh9U5xMvyzm65nl7KnygkxY/A3Lga66W1dn25Pq/SX
         RdfmypU4kyBulnDIAQ+ISzCrXIW/NkX193TrvffeJ7LOETFknUYlfwIm9K2+oSwicyM9
         ai8wa2B4d9RlcL1Hg+HhzW9CzoCHnPWxt1ML1rNYGw8IRwN9mPkh+w374J4PquJmjRmW
         xTcufASK2cvfKyc5rK5DzXaNSvMRhkBPDuBStev/5eYjBc0j8IHgk2Qf8sExSTVhrdk4
         A5EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references:cc:to
         :from:subject:user-agent:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+kA1qSzxQXIu4fw2GoA8MlImKzV+Bj5Z1kPIUMG150g=;
        b=mcelwENlC2y2r+yn1GqGFxzwOSagTLKge0zrCe4khUsgN0hus6uM2ZNz/8wVmaHYX9
         VHmb9msyk+SZdCy0dsPKjZUBUegTVXGZLlFphqM8jd1fDHHxzLqUL93yXUd4T9YWQDmp
         mr42i6PupdzZ86SdoNXtzvyeauH9rvCOvhIqSTnARzxPZaZwbCPSG7BS2cIOoE8NZ63u
         0DNEdJ6ZrlqiQ0biB7slkh4ktoszQF+zofTxoSCLvJB+J3ATiXgMznIyqn9WvGbNKOdA
         vWbIS8z720pXNNEjocPlwL9yiBmQVwpNErIxFycMRzwyxnqeiGZKnOAtDhhn1VgmYl/2
         S8rA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUeePSF8/IvH+EO5PV4XTu1gCPLDWbhAdg3SI0oCuhIzn6wfOOW
	/p+hKygILrqcEGPpqwHmcf0=
X-Google-Smtp-Source: APXvYqxSW7S768fLuA8QG9matcFflg7/p/KOtqrqlrRg26kbPqybTzS0Zzbiu45BGE7G/iI9KY1IDQ==
X-Received: by 2002:a63:f926:: with SMTP id h38mr32110814pgi.80.1568198049887;
        Wed, 11 Sep 2019 03:34:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6307:: with SMTP id x7ls4994161pfb.0.gmail; Wed, 11 Sep
 2019 03:34:09 -0700 (PDT)
X-Received: by 2002:a63:f926:: with SMTP id h38mr32110792pgi.80.1568198049592;
        Wed, 11 Sep 2019 03:34:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568198049; cv=none;
        d=google.com; s=arc-20160816;
        b=Ck5cS6ULMKy/fTSGUsVvbd2FTOgwt/9TP3nus/En5P7Bj0SWjji3xVIkDYdXbmF24N
         C7Q0D1H7DtEN47PTmjWx5j8mtnDjgd8vnmOIngg8Qtc5UR2rA9XITktxYIgHQYwVOKuV
         LvIOdzKydJfDRdu/mtE4r2op1B421HL4HVLB+spO1RmTaIwYDZMsA9qLQWSfcQjSwl3w
         uw1h8jyef3rELMGEE1b9Mi2jWo8IMCF1P93q+EfOeFgMYKJ7eEOZXxQI7wjqVfS8W/i4
         tgThsp5iZKt0mopxIIWxCOpbkO38Ug/QoZUFyqhcDh8JZTnW+k7+dTt6Cl7ic3rpEEQt
         9REA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:user-agent:subject:from:to:cc:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=033+oemSLBORMMmQ9rzT30q4C4Hjkxfo4GyxOmzF4cw=;
        b=JOEjd8GW256xV7j4/fY2CnMPMk9lRd/l0wNA/8mHoAhx0m7LKz+Ng19a3aAtcxO/yw
         wBe1CL1HoFeHxUc/250SnFF5a1W5TP4R1DjTIa+/8dRkM2Mu4w81SONouIP/dr4o/TE+
         sE3vaURCyRj+K1UESXhuDN1Fx8CuakMIkVO7L5qypdCCjAc1NN3jOM9Mmbz0mOefCSiw
         RVv9eMZYeV/fbi03XZvV864Bt+lVUnPzRvpbdszLgjBa19WEWCx2YAy9PTlhLxijad+d
         K8kCJzjTS3US3P8UjKlRK/Nlwv1IhtPTGGxC1gWX5fWwLBc4IRlHzjPo6O7OR4RYSGOo
         DMaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jS57VgcO;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n11si91332pjp.0.2019.09.11.03.34.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Sep 2019 03:34:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kernel.org (unknown [104.132.0.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 458512087E;
	Wed, 11 Sep 2019 10:34:09 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <20190904211126.47518-1-saravanak@google.com>
References: <20190904211126.47518-1-saravanak@google.com>
Cc: Saravana Kannan <saravanak@google.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org, linux-acpi@vger.kernel.org, clang-built-linux@googlegroups.com, David Collins <collinsd@codeaurora.org>, kernel-team@android.com
To: "Rafael J. Wysocki" <rafael@kernel.org>, Frank Rowand <frowand.list@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jonathan Corbet <corbet@lwn.net>, Len Brown <lenb@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>, Saravana Kannan <saravanak@google.com>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v11 0/6] Solve postboot supplier cleanup and optimize probe ordering
User-Agent: alot/0.8.1
Date: Wed, 11 Sep 2019 03:34:08 -0700
Message-Id: <20190911103409.458512087E@mail.kernel.org>
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=jS57VgcO;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Quoting Saravana Kannan (2019-09-04 14:11:19)
> v10->v11:
> - Dropped 6/7 and 7/7 from previous series that tried to handle cycles in DT
>   dependencies. We can solve it later when we actually hit a real world issue
>   in DT.
> - Added a new 1/7 that shifts the numbering for the rest of the patches
> - 1/7 adds a way to look up a device from a fwnode so that this series can work
>   across bus and firmware types
> - 3/7 removed references to platform_device from of/property.c
> - 4/7 Minor variable rename
> - 4/7 Defer sync_state() be default at driver core level and resume at
>   late_initcall_sync(). That way, we don't depend on any specific bus types
>   having to pause/resume sync_state() till late_initcall_sync()

Please reverse this list so that most recent series changes come first
and we don't have to scroll through all the history to get to what has
changed recently.

Also, please Cc me on future changes and I would suggest involving any
subsystem maintainers that this code is optimizing for. Looks like Mark
Brown and Georgi Djakov should be included in this series for awareness
(but it's at v11 already!)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190911103409.458512087E%40mail.kernel.org.
